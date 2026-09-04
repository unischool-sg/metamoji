.class Lcom/metamoji/nt/itemlist/NtItemList$5;
.super Ljava/lang/Object;
.source "NtItemList.java"

# interfaces
.implements Lcom/metamoji/nt/itemlist/NtItemList$SingleSelectAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/itemlist/NtItemList;->getSingleSelectAction()Lcom/metamoji/nt/itemlist/NtItemList$SingleSelectAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/nt/itemlist/NtItemList;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/itemlist/NtItemList;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 379
    iput-object p1, p0, Lcom/metamoji/nt/itemlist/NtItemList$5;->this$0:Lcom/metamoji/nt/itemlist/NtItemList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isShowContextMenuOnSelectedItemShortTap(Lcom/metamoji/nt/itemlist/NtItemListItemContainer;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 382
    iget-object p1, p0, Lcom/metamoji/nt/itemlist/NtItemList$5;->this$0:Lcom/metamoji/nt/itemlist/NtItemList;

    invoke-virtual {p1}, Lcom/metamoji/nt/itemlist/NtItemList;->isShowContextMenuOnSelectedItemShortTap()Z

    move-result p1

    return p1
.end method

.method public performAdditionalAction(Lcom/metamoji/nt/itemlist/NtItemListItemContainer;Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method
