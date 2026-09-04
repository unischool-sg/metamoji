.class Lcom/metamoji/ui/HistoryBarDriver$3;
.super Ljava/lang/Object;
.source "HistoryBarDriver.java"

# interfaces
.implements Lcom/metamoji/ui/HistoryMenuItemView$HistoryMenuEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/HistoryBarDriver;->createMenuItems(Z)Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/HistoryBarDriver;

.field final synthetic val$menu:Lcom/metamoji/ui/CustomMenuView;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/HistoryBarDriver;Lcom/metamoji/ui/CustomMenuView;)V
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

    .line 975
    iput-object p1, p0, Lcom/metamoji/ui/HistoryBarDriver$3;->this$0:Lcom/metamoji/ui/HistoryBarDriver;

    iput-object p2, p0, Lcom/metamoji/ui/HistoryBarDriver$3;->val$menu:Lcom/metamoji/ui/CustomMenuView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemDelete(Lcom/metamoji/nt/NtMRUDocList$Item;)V
    .locals 1

    .line 999
    iget-object v0, p0, Lcom/metamoji/ui/HistoryBarDriver$3;->this$0:Lcom/metamoji/ui/HistoryBarDriver;

    invoke-virtual {v0, p1}, Lcom/metamoji/ui/HistoryBarDriver;->deleteMe(Ljava/lang/Object;)V

    .line 1000
    iget-object p1, p0, Lcom/metamoji/ui/HistoryBarDriver$3;->val$menu:Lcom/metamoji/ui/CustomMenuView;

    invoke-virtual {p1}, Lcom/metamoji/ui/CustomMenuView;->CloseMenu()Z

    return-void
.end method

.method public onMenuItemSelect(Lcom/metamoji/nt/NtMRUDocList$Item;)V
    .locals 3

    .line 983
    invoke-static {}, Lcom/metamoji/nt/NtMRUDocList;->getInstance()Lcom/metamoji/nt/NtMRUDocList;

    move-result-object v0

    .line 987
    invoke-virtual {p1}, Lcom/metamoji/nt/NtMRUDocList$Item;->docId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtMRUDocList;->findMruIndex(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0}, Lcom/metamoji/nt/NtMRUDocList;->tabCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/nt/NtMRUDocList;->moveMru(II)V

    .line 989
    iget-object v0, p0, Lcom/metamoji/ui/HistoryBarDriver$3;->this$0:Lcom/metamoji/ui/HistoryBarDriver;

    invoke-virtual {v0, p1}, Lcom/metamoji/ui/HistoryBarDriver;->selectMe(Ljava/lang/Object;)V

    .line 990
    iget-object p1, p0, Lcom/metamoji/ui/HistoryBarDriver$3;->val$menu:Lcom/metamoji/ui/CustomMenuView;

    invoke-virtual {p1}, Lcom/metamoji/ui/CustomMenuView;->CloseMenu()Z

    return-void
.end method
