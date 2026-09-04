.class Lcom/metamoji/noteanytime/FrameLayoutDetectableSoftInput$1;
.super Ljava/lang/Object;
.source "FrameLayoutDetectableSoftInput.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/noteanytime/FrameLayoutDetectableSoftInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/noteanytime/FrameLayoutDetectableSoftInput;


# direct methods
.method constructor <init>(Lcom/metamoji/noteanytime/FrameLayoutDetectableSoftInput;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 46
    iput-object p1, p0, Lcom/metamoji/noteanytime/FrameLayoutDetectableSoftInput$1;->this$0:Lcom/metamoji/noteanytime/FrameLayoutDetectableSoftInput;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/metamoji/noteanytime/FrameLayoutDetectableSoftInput$1;->this$0:Lcom/metamoji/noteanytime/FrameLayoutDetectableSoftInput;

    iget-object v0, v0, Lcom/metamoji/noteanytime/FrameLayoutDetectableSoftInput;->_onShowHideSoftInputListener:Lcom/metamoji/noteanytime/FrameLayoutDetectableSoftInput$OnShowHideSoftInputListener;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/metamoji/noteanytime/FrameLayoutDetectableSoftInput$1;->this$0:Lcom/metamoji/noteanytime/FrameLayoutDetectableSoftInput;

    iget-object v0, v0, Lcom/metamoji/noteanytime/FrameLayoutDetectableSoftInput;->_onShowHideSoftInputListener:Lcom/metamoji/noteanytime/FrameLayoutDetectableSoftInput$OnShowHideSoftInputListener;

    invoke-interface {v0}, Lcom/metamoji/noteanytime/FrameLayoutDetectableSoftInput$OnShowHideSoftInputListener;->onShowSoftInput()V

    :cond_0
    return-void
.end method
