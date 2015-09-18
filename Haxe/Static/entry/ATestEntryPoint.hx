package entry;
import buddy.*;
import cases.*;

@:uclass
class ATestEntryPoint extends unreal.AActor {
  override public function PostLoad() {
    super.PostLoad();

    var reporter = new buddy.reporting.TraceReporter();

    var runner = new buddy.SuitesRunner([
      new TestUObjectExterns()
    ], reporter);

    runner.run().then(function(_) {
      if (Sys.getEnv("CI_RUNNING") == "1") {
        trace('Ending stub implementation');
        var success = !runner.failed();
        Sys.exit(success ? 0 : 2);
      }
    });
    // do some tests
  }
}