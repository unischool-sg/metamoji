.class Lcom/metamoji/un/draw2/unit/DrUnUnitContext$1;
.super Ljava/lang/Object;
.source "DrUnUnitContext.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->blurOnBackgroundThread(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/un/draw2/unit/DrUnUnitContext;


# direct methods
.method constructor <init>(Lcom/metamoji/un/draw2/unit/DrUnUnitContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1968
    iput-object p1, p0, Lcom/metamoji/un/draw2/unit/DrUnUnitContext$1;->this$0:Lcom/metamoji/un/draw2/unit/DrUnUnitContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1970
    iget-object v0, p0, Lcom/metamoji/un/draw2/unit/DrUnUnitContext$1;->this$0:Lcom/metamoji/un/draw2/unit/DrUnUnitContext;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->controller()Lcom/metamoji/un/draw2/unit/DrUnUnitController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/unit/DrUnUnitController;->getAppFrame()Lcom/metamoji/nt/INtAppFrame;

    move-result-object v0

    invoke-interface {v0}, Lcom/metamoji/nt/INtAppFrame;->requestKillFocus()V

    return-void
.end method
