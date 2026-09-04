.class Lcom/metamoji/ns/ui/NsCollaboModeBar$25;
.super Ljava/lang/Object;
.source "NsCollaboModeBar.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/ui/NsCollaboModeBar;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ns/ui/NsCollaboModeBar;


# direct methods
.method constructor <init>(Lcom/metamoji/ns/ui/NsCollaboModeBar;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 584
    iput-object p1, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar$25;->this$0:Lcom/metamoji/ns/ui/NsCollaboModeBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 586
    iget-object p1, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar$25;->this$0:Lcom/metamoji/ns/ui/NsCollaboModeBar;

    iget-object p1, p1, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_userListDataAdapterForSchool:Lcom/metamoji/forSchool/ui/ScUserListAdapter;

    invoke-virtual {p1, p3}, Lcom/metamoji/forSchool/ui/ScUserListAdapter;->isHeader(I)Z

    move-result p1

    .line 590
    iget-object p4, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar$25;->this$0:Lcom/metamoji/ns/ui/NsCollaboModeBar;

    if-eqz p1, :cond_0

    .line 587
    invoke-virtual {p4, p2, p3}, Lcom/metamoji/ns/ui/NsCollaboModeBar;->showUserListContextMenuOnSection(Landroid/view/View;I)V

    return-void

    .line 590
    :cond_0
    invoke-virtual {p4, p2, p3}, Lcom/metamoji/ns/ui/NsCollaboModeBar;->showUserListContextMenu(Landroid/view/View;I)V

    return-void
.end method
