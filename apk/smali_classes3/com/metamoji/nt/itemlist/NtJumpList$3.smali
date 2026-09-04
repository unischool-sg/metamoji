.class Lcom/metamoji/nt/itemlist/NtJumpList$3;
.super Ljava/lang/Object;
.source "NtJumpList.java"

# interfaces
.implements Lcom/metamoji/cm/ICmEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/itemlist/NtJumpList;->initializeList(Lcom/metamoji/nt/NtNoteController;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/metamoji/cm/ICmEventHandler<",
        "Lcom/metamoji/nt/NtPageController;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/nt/itemlist/NtJumpList;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/itemlist/NtJumpList;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 121
    iput-object p1, p0, Lcom/metamoji/nt/itemlist/NtJumpList$3;->this$0:Lcom/metamoji/nt/itemlist/NtJumpList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lcom/metamoji/nt/NtPageController;)V
    .locals 2

    .line 124
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/nt/itemlist/NtJumpList$3$1;

    invoke-direct {v1, p0, p1}, Lcom/metamoji/nt/itemlist/NtJumpList$3$1;-><init>(Lcom/metamoji/nt/itemlist/NtJumpList$3;Lcom/metamoji/nt/NtPageController;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThreadAsync(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 121
    check-cast p1, Lcom/metamoji/nt/NtPageController;

    invoke-virtual {p0, p1}, Lcom/metamoji/nt/itemlist/NtJumpList$3;->invoke(Lcom/metamoji/nt/NtPageController;)V

    return-void
.end method
