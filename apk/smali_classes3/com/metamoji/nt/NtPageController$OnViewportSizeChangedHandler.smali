.class Lcom/metamoji/nt/NtPageController$OnViewportSizeChangedHandler;
.super Ljava/lang/Object;
.source "NtPageController.java"

# interfaces
.implements Lcom/metamoji/cm/ICmEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/nt/NtPageController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnViewportSizeChangedHandler"
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
.field final synthetic this$0:Lcom/metamoji/nt/NtPageController;


# direct methods
.method private constructor <init>(Lcom/metamoji/nt/NtPageController;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 2827
    iput-object p1, p0, Lcom/metamoji/nt/NtPageController$OnViewportSizeChangedHandler;->this$0:Lcom/metamoji/nt/NtPageController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/metamoji/nt/NtPageController;Lcom/metamoji/nt/NtPageController-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/nt/NtPageController$OnViewportSizeChangedHandler;-><init>(Lcom/metamoji/nt/NtPageController;)V

    return-void
.end method


# virtual methods
.method public invoke(Lcom/metamoji/cm/CmContext;)V
    .locals 1

    .line 2830
    iget-object p1, p0, Lcom/metamoji/nt/NtPageController$OnViewportSizeChangedHandler;->this$0:Lcom/metamoji/nt/NtPageController;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/metamoji/nt/NtPageController;->notifyViewingPositionChangedOnCollabo(Z)V

    .line 2833
    iget-object p1, p0, Lcom/metamoji/nt/NtPageController$OnViewportSizeChangedHandler;->this$0:Lcom/metamoji/nt/NtPageController;

    invoke-static {p1}, Lcom/metamoji/nt/NtPageController;->access$000(Lcom/metamoji/nt/NtPageController;)Lcom/metamoji/df/controller/DfDocument;

    move-result-object p1

    check-cast p1, Lcom/metamoji/nt/NtDocument;

    invoke-virtual {p1}, Lcom/metamoji/nt/NtDocument;->getDirectionManager()Lcom/metamoji/ns/direction/NsDirectionManager;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2835
    invoke-virtual {p1}, Lcom/metamoji/ns/direction/NsDirectionManager;->followPresenterNextTime()V

    :cond_0
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

    .line 2827
    check-cast p1, Lcom/metamoji/cm/CmContext;

    invoke-virtual {p0, p1}, Lcom/metamoji/nt/NtPageController$OnViewportSizeChangedHandler;->invoke(Lcom/metamoji/cm/CmContext;)V

    return-void
.end method
