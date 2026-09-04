.class Lcom/metamoji/ui/dialog/ScMergeNoteDialog$NoteListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ScMergeNoteDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/dialog/ScMergeNoteDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NoteListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/metamoji/ui/dialog/ScMergeNoteDialog$NoteListItemData;",
        ">;"
    }
.end annotation


# instance fields
.field private m_layoutInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/metamoji/ui/dialog/ScMergeNoteDialog;


# direct methods
.method public constructor <init>(Lcom/metamoji/ui/dialog/ScMergeNoteDialog;Landroid/content/Context;)V
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

    .line 81
    iput-object p1, p0, Lcom/metamoji/ui/dialog/ScMergeNoteDialog$NoteListAdapter;->this$0:Lcom/metamoji/ui/dialog/ScMergeNoteDialog;

    const/4 p1, 0x0

    .line 82
    invoke-direct {p0, p2, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 83
    const-string p1, "layout_inflater"

    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/metamoji/ui/dialog/ScMergeNoteDialog$NoteListAdapter;->m_layoutInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method createNoteListCtrl(Landroid/view/View;Lcom/metamoji/ui/dialog/ScMergeNoteDialog$NoteListItemData;)Landroid/view/View;
    .locals 1

    .line 111
    sget v0, Lcom/metamoji/noteanytime/R$id;->labelText:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 112
    iget-object p2, p2, Lcom/metamoji/ui/dialog/ScMergeNoteDialog$NoteListItemData;->title:Ljava/lang/String;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p2, 0x0

    .line 113
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 114
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setClickable(Z)V

    .line 115
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    .line 118
    sget v0, Lcom/metamoji/noteanytime/R$id;->itemHandle:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 119
    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    return-object p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 96
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/dialog/ScMergeNoteDialog$NoteListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/ui/dialog/ScMergeNoteDialog$NoteListItemData;

    if-nez p2, :cond_0

    .line 99
    iget-object p2, p0, Lcom/metamoji/ui/dialog/ScMergeNoteDialog$NoteListAdapter;->m_layoutInflater:Landroid/view/LayoutInflater;

    sget p3, Lcom/metamoji/noteanytime/R$layout;->dialog_doc_path_list_listitem:I

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 101
    :cond_0
    instance-of p3, p2, Landroid/widget/LinearLayout;

    if-eqz p3, :cond_1

    .line 102
    move-object p3, p2

    check-cast p3, Landroid/widget/LinearLayout;

    const/high16 v0, 0x60000

    .line 103
    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->setDescendantFocusability(I)V

    .line 106
    :cond_1
    invoke-virtual {p0, p2, p1}, Lcom/metamoji/ui/dialog/ScMergeNoteDialog$NoteListAdapter;->createNoteListCtrl(Landroid/view/View;Lcom/metamoji/ui/dialog/ScMergeNoteDialog$NoteListItemData;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public updateContext(Landroid/content/Context;)V
    .locals 1

    .line 90
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/metamoji/ui/dialog/ScMergeNoteDialog$NoteListAdapter;->m_layoutInflater:Landroid/view/LayoutInflater;

    return-void
.end method
