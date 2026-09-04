.class Lcom/metamoji/df/controller/DfPageController$4;
.super Ljava/lang/Object;
.source "DfPageController.java"

# interfaces
.implements Lcom/metamoji/df/controller/IControllerAccessHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/df/controller/DfPageController;->notifyPaperChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/df/controller/DfPageController;

.field final synthetic val$pageController:Lcom/metamoji/df/controller/DfPageController;


# direct methods
.method constructor <init>(Lcom/metamoji/df/controller/DfPageController;Lcom/metamoji/df/controller/DfPageController;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 719
    iput-object p1, p0, Lcom/metamoji/df/controller/DfPageController$4;->this$0:Lcom/metamoji/df/controller/DfPageController;

    iput-object p2, p0, Lcom/metamoji/df/controller/DfPageController$4;->val$pageController:Lcom/metamoji/df/controller/DfPageController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Access(Lcom/metamoji/df/controller/DfController;)V
    .locals 1

    .line 722
    iget-object v0, p0, Lcom/metamoji/df/controller/DfPageController$4;->val$pageController:Lcom/metamoji/df/controller/DfPageController;

    invoke-virtual {p1, v0}, Lcom/metamoji/df/controller/DfController;->paperSizeChanged(Lcom/metamoji/df/controller/DfPageController;)V

    return-void
.end method
