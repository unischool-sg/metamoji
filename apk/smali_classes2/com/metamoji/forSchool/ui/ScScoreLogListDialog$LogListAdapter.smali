.class Lcom/metamoji/forSchool/ui/ScScoreLogListDialog$LogListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ScScoreLogListDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/forSchool/ui/ScScoreLogListDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LogListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/metamoji/forSchool/ui/ScScoreLogListDialog$LogListItemMap;",
        ">;"
    }
.end annotation


# instance fields
.field private m_layoutInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/metamoji/forSchool/ui/ScScoreLogListDialog;


# direct methods
.method public constructor <init>(Lcom/metamoji/forSchool/ui/ScScoreLogListDialog;Landroid/content/Context;)V
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

    .line 110
    iput-object p1, p0, Lcom/metamoji/forSchool/ui/ScScoreLogListDialog$LogListAdapter;->this$0:Lcom/metamoji/forSchool/ui/ScScoreLogListDialog;

    const/4 p1, 0x0

    .line 111
    invoke-direct {p0, p2, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 112
    invoke-virtual {p0, p2}, Lcom/metamoji/forSchool/ui/ScScoreLogListDialog$LogListAdapter;->updateContext(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 126
    invoke-virtual {p0, p1}, Lcom/metamoji/forSchool/ui/ScScoreLogListDialog$LogListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/forSchool/ui/ScScoreLogListDialog$LogListItemMap;

    if-nez p2, :cond_0

    .line 129
    iget-object p2, p0, Lcom/metamoji/forSchool/ui/ScScoreLogListDialog$LogListAdapter;->m_layoutInflater:Landroid/view/LayoutInflater;

    sget p3, Lcom/metamoji/noteanytime/R$layout;->dialog_school_score_loglist_item:I

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 131
    :cond_0
    iget-object p3, p0, Lcom/metamoji/forSchool/ui/ScScoreLogListDialog$LogListAdapter;->this$0:Lcom/metamoji/forSchool/ui/ScScoreLogListDialog;

    invoke-virtual {p3, p2, p1}, Lcom/metamoji/forSchool/ui/ScScoreLogListDialog;->setItemData(Landroid/view/View;Lcom/metamoji/forSchool/ui/ScScoreLogListDialog$LogListItemMap;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public updateContext(Landroid/content/Context;)V
    .locals 1

    .line 120
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/metamoji/forSchool/ui/ScScoreLogListDialog$LogListAdapter;->m_layoutInflater:Landroid/view/LayoutInflater;

    return-void
.end method
