.class Lcom/metamoji/mazec/ui/MazecView$36;
.super Ljava/lang/Object;
.source "MazecView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/mazec/ui/MazecView;->initTabletOnlyUIParts(Lcom/metamoji/mazec/MazecIms;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/mazec/ui/MazecView;


# direct methods
.method constructor <init>(Lcom/metamoji/mazec/ui/MazecView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1670
    iput-object p1, p0, Lcom/metamoji/mazec/ui/MazecView$36;->this$0:Lcom/metamoji/mazec/ui/MazecView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1672
    invoke-static {}, Lcom/metamoji/mazec/MazecIms;->getInstance()Lcom/metamoji/mazec/MazecIms;

    move-result-object p1

    .line 1673
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MazecView$36;->this$0:Lcom/metamoji/mazec/ui/MazecView;

    invoke-static {v0}, Lcom/metamoji/mazec/ui/MazecView;->-$$Nest$mnotifyButtonClicked(Lcom/metamoji/mazec/ui/MazecView;)V

    .line 1674
    invoke-virtual {p1}, Lcom/metamoji/mazec/MazecIms;->getHwrResult()Lcom/metamoji/mazec/recognizer/HwRecognitionResult;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1675
    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/mazec/recognizer/HwRecognitionResult;->getTopCandidateString()Ljava/lang/String;

    move-result-object v0

    .line 1676
    :goto_0
    invoke-virtual {p1, v0}, Lcom/metamoji/mazec/MazecIms;->startMushroom(Ljava/lang/String;)V

    return-void
.end method
