.class Lcom/metamoji/nt/itemlist/NtPageList$3;
.super Ljava/lang/Object;
.source "NtPageList.java"

# interfaces
.implements Lcom/metamoji/cm/ICmEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/itemlist/NtPageList;->initializeList(Lcom/metamoji/nt/NtNoteController;I)V
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
.field final synthetic this$0:Lcom/metamoji/nt/itemlist/NtPageList;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/itemlist/NtPageList;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 130
    iput-object p1, p0, Lcom/metamoji/nt/itemlist/NtPageList$3;->this$0:Lcom/metamoji/nt/itemlist/NtPageList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lcom/metamoji/df/controller/DfPageController;)V
    .locals 1

    .line 134
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p1

    new-instance v0, Lcom/metamoji/nt/itemlist/NtPageList$3$1;

    invoke-direct {v0, p0}, Lcom/metamoji/nt/itemlist/NtPageList$3$1;-><init>(Lcom/metamoji/nt/itemlist/NtPageList$3;)V

    invoke-virtual {p1, v0}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThreadAsync(Ljava/lang/Runnable;)Z

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

    .line 130
    check-cast p1, Lcom/metamoji/df/controller/DfPageController;

    invoke-virtual {p0, p1}, Lcom/metamoji/nt/itemlist/NtPageList$3;->invoke(Lcom/metamoji/df/controller/DfPageController;)V

    return-void
.end method
