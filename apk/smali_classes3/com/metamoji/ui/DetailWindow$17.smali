.class Lcom/metamoji/ui/DetailWindow$17;
.super Ljava/lang/Object;
.source "DetailWindow.java"

# interfaces
.implements Lcom/metamoji/cm/ICmEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/DetailWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/metamoji/cm/ICmEventHandler<",
        "Lcom/metamoji/cm/CmContext;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/DetailWindow;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/DetailWindow;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 658
    iput-object p1, p0, Lcom/metamoji/ui/DetailWindow$17;->this$0:Lcom/metamoji/ui/DetailWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lcom/metamoji/cm/CmContext;)V
    .locals 0

    .line 661
    iget-object p1, p0, Lcom/metamoji/ui/DetailWindow$17;->this$0:Lcom/metamoji/ui/DetailWindow;

    invoke-static {p1}, Lcom/metamoji/ui/DetailWindow;->-$$Nest$fget_frame(Lcom/metamoji/ui/DetailWindow;)Lcom/metamoji/ui/DetailFrame;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/ui/DetailFrame;->notifyZoomChanged()V

    .line 662
    iget-object p1, p0, Lcom/metamoji/ui/DetailWindow$17;->this$0:Lcom/metamoji/ui/DetailWindow;

    invoke-static {p1}, Lcom/metamoji/ui/DetailWindow;->-$$Nest$mupdatePartsPosition(Lcom/metamoji/ui/DetailWindow;)V

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 658
    check-cast p1, Lcom/metamoji/cm/CmContext;

    invoke-virtual {p0, p1}, Lcom/metamoji/ui/DetailWindow$17;->invoke(Lcom/metamoji/cm/CmContext;)V

    return-void
.end method
