.class Lcom/metamoji/ns/ui/NsCollaboModeDialog$18;
.super Ljava/lang/Object;
.source "NsCollaboModeDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/ui/NsCollaboModeDialog;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ns/ui/NsCollaboModeDialog;


# direct methods
.method constructor <init>(Lcom/metamoji/ns/ui/NsCollaboModeDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 354
    iput-object p1, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog$18;->this$0:Lcom/metamoji/ns/ui/NsCollaboModeDialog;

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

    .line 356
    iget-object p1, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog$18;->this$0:Lcom/metamoji/ns/ui/NsCollaboModeDialog;

    iget-object p1, p1, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_userListDataAdapterForSchool:Lcom/metamoji/forSchool/ui/ScUserListAdapter;

    invoke-virtual {p1, p3}, Lcom/metamoji/forSchool/ui/ScUserListAdapter;->isHeader(I)Z

    move-result p1

    .line 360
    iget-object p4, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog$18;->this$0:Lcom/metamoji/ns/ui/NsCollaboModeDialog;

    if-eqz p1, :cond_0

    .line 357
    invoke-virtual {p4, p2, p3}, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->showUserListContextMenuOnSection(Landroid/view/View;I)V

    return-void

    .line 360
    :cond_0
    invoke-virtual {p4, p2, p3}, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->showUserListContextMenu(Landroid/view/View;I)V

    return-void
.end method
