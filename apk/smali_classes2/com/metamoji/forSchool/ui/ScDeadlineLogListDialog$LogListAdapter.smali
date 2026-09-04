.class Lcom/metamoji/forSchool/ui/ScDeadlineLogListDialog$LogListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ScDeadlineLogListDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/forSchool/ui/ScDeadlineLogListDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LogListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/metamoji/forSchool/ui/ScDeadlineLogListDialog$LogListItemMap;",
        ">;"
    }
.end annotation


# instance fields
.field private m_layoutInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/metamoji/forSchool/ui/ScDeadlineLogListDialog;


# direct methods
.method public constructor <init>(Lcom/metamoji/forSchool/ui/ScDeadlineLogListDialog;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 112
    iput-object p1, p0, Lcom/metamoji/forSchool/ui/ScDeadlineLogListDialog$LogListAdapter;->this$0:Lcom/metamoji/forSchool/ui/ScDeadlineLogListDialog;

    const/4 p1, 0x0

    .line 113
    invoke-direct {p0, p2, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 114
    invoke-virtual {p0, p2}, Lcom/metamoji/forSchool/ui/ScDeadlineLogListDialog$LogListAdapter;->updateContext(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 128
    invoke-virtual {p0, p1}, Lcom/metamoji/forSchool/ui/ScDeadlineLogListDialog$LogListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/forSchool/ui/ScDeadlineLogListDialog$LogListItemMap;

    if-nez p2, :cond_0

    .line 131
    iget-object p2, p0, Lcom/metamoji/forSchool/ui/ScDeadlineLogListDialog$LogListAdapter;->m_layoutInflater:Landroid/view/LayoutInflater;

    sget p3, Lcom/metamoji/noteanytime/R$layout;->dialog_school_deadline_loglist_item:I

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 133
    :cond_0
    iget-object p3, p0, Lcom/metamoji/forSchool/ui/ScDeadlineLogListDialog$LogListAdapter;->this$0:Lcom/metamoji/forSchool/ui/ScDeadlineLogListDialog;

    invoke-virtual {p3, p2, p1}, Lcom/metamoji/forSchool/ui/ScDeadlineLogListDialog;->setItemData(Landroid/view/View;Lcom/metamoji/forSchool/ui/ScDeadlineLogListDialog$LogListItemMap;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public updateContext(Landroid/content/Context;)V
    .locals 1

    .line 122
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/metamoji/forSchool/ui/ScDeadlineLogListDialog$LogListAdapter;->m_layoutInflater:Landroid/view/LayoutInflater;

    return-void
.end method
