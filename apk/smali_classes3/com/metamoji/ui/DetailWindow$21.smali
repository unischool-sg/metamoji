.class Lcom/metamoji/ui/DetailWindow$21;
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
        "Lcom/metamoji/df/controller/DfPageController;",
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

    .line 690
    iput-object p1, p0, Lcom/metamoji/ui/DetailWindow$21;->this$0:Lcom/metamoji/ui/DetailWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lcom/metamoji/df/controller/DfPageController;)V
    .locals 0

    .line 693
    iget-object p1, p0, Lcom/metamoji/ui/DetailWindow$21;->this$0:Lcom/metamoji/ui/DetailWindow;

    invoke-virtual {p1}, Lcom/metamoji/ui/DetailWindow;->refresh()V

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

    .line 690
    check-cast p1, Lcom/metamoji/df/controller/DfPageController;

    invoke-virtual {p0, p1}, Lcom/metamoji/ui/DetailWindow$21;->invoke(Lcom/metamoji/df/controller/DfPageController;)V

    return-void
.end method
