.class Lcom/metamoji/tle/TextLineExtractorManager$1$1;
.super Ljava/lang/Object;
.source "TextLineExtractorManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/tle/TextLineExtractorManager$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/tle/TextLineExtractorManager$1;


# direct methods
.method constructor <init>(Lcom/metamoji/tle/TextLineExtractorManager$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 519
    iput-object p1, p0, Lcom/metamoji/tle/TextLineExtractorManager$1$1;->this$0:Lcom/metamoji/tle/TextLineExtractorManager$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 523
    iget-object v0, p0, Lcom/metamoji/tle/TextLineExtractorManager$1$1;->this$0:Lcom/metamoji/tle/TextLineExtractorManager$1;

    iget-boolean v0, v0, Lcom/metamoji/tle/TextLineExtractorManager$1;->val$recognizeText:Z

    if-eqz v0, :cond_0

    .line 524
    invoke-static {}, Lcom/metamoji/tle/TextLineExtractorManager;->getInputViewForTLE()Lcom/metamoji/tle/InputViewForTLE;

    move-result-object v0

    .line 525
    invoke-virtual {v0}, Lcom/metamoji/tle/InputViewForTLE;->uninitRecognizeText()V

    :cond_0
    return-void
.end method
