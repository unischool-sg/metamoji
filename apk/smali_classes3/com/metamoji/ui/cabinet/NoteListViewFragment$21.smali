.class Lcom/metamoji/ui/cabinet/NoteListViewFragment$21;
.super Ljava/lang/Object;
.source "NoteListViewFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/cabinet/NoteListViewFragment;->prepareMultiSelectButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1457
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$21;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    .line 1460
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1461
    new-instance v1, Lcom/metamoji/ui/UiMenuItem;

    sget-object v2, Lcom/metamoji/ui/PopupCommand;->CABINET_MULTISELECT_SELECT_ALL:Lcom/metamoji/ui/PopupCommand;

    sget v4, Lcom/metamoji/noteanytime/R$string;->Cabinet_Multiselect_Select_All:I

    sget v5, Lcom/metamoji/noteanytime/R$drawable;->mnu_icon_select_note:I

    sget v6, Lcom/metamoji/noteanytime/R$drawable;->mnu_icon_select_note:I

    const/4 v3, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/metamoji/ui/UiMenuItem;-><init>(Lcom/metamoji/ui/PopupCommand;Ljava/lang/Object;III)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1462
    new-instance v2, Lcom/metamoji/ui/UiMenuItem;

    sget-object v3, Lcom/metamoji/ui/PopupCommand;->CABINET_MULTISELECT_SELECT_NONE:Lcom/metamoji/ui/PopupCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->Cabinet_Multiselect_Select_None:I

    sget v6, Lcom/metamoji/noteanytime/R$drawable;->mnu_icon_unselect:I

    sget v7, Lcom/metamoji/noteanytime/R$drawable;->mnu_icon_unselect:I

    const/4 v4, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/metamoji/ui/UiMenuItem;-><init>(Lcom/metamoji/ui/PopupCommand;Ljava/lang/Object;III)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1463
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$21;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {v1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fget_activity(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$21;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {v1, v0, v2, p1}, Lcom/metamoji/noteanytime/MainActivity;->showActionMenu(Landroidx/fragment/app/FragmentActivity;Ljava/util/ArrayList;Lcom/metamoji/ui/MenuEventListener;Landroid/view/View;)V

    return-void
.end method
