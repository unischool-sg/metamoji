.class Lcom/metamoji/ui/cabinet/NoteListViewFragment$23;
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

    .line 1485
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$23;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 13

    .line 1488
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1492
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$23;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {v1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fget_multiSelectItems(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;

    if-eqz v5, :cond_0

    if-nez v3, :cond_1

    .line 1494
    invoke-static {v5}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->-$$Nest$fget_metadata(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$smisShareNote(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    move v3, v6

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    if-nez v4, :cond_0

    .line 1500
    iget-object v7, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$23;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {v5}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->-$$Nest$fget_metadata(Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v7, v5}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$misTemplate(Lcom/metamoji/ui/cabinet/NoteListViewFragment;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v4, v6

    if-eqz v3, :cond_0

    .line 1510
    :cond_2
    :goto_0
    invoke-static {}, Lcom/metamoji/nt/NtFeatureManager;->getInstance()Lcom/metamoji/nt/NtFeatureManager;

    move-result-object v1

    sget-object v5, Lcom/metamoji/nt/NtFeature;->AppUnavailableHistoryTab:Lcom/metamoji/nt/NtFeature;

    invoke-virtual {v1, v5}, Lcom/metamoji/nt/NtFeatureManager;->isAvailable(Lcom/metamoji/nt/NtFeature;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1511
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$23;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {v1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fget_userDefaults(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v1

    const-string v5, "MMJNtHistoryBarShow"

    invoke-virtual {v1, v5, v2}, Lcom/metamoji/nt/NtUserDefaults;->getBoolValue(Ljava/lang/String;Z)Z

    move-result v1

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    if-nez v4, :cond_6

    if-eqz v1, :cond_4

    .line 1518
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$23;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-virtual {v1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->isTabletSize(Landroidx/fragment/app/FragmentActivity;)Z

    move-result v1

    if-nez v1, :cond_5

    :cond_4
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$23;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {v1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fget_multiSelectItems(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gt v1, v6, :cond_6

    .line 1520
    :cond_5
    new-instance v7, Lcom/metamoji/ui/UiMenuItem;

    sget-object v8, Lcom/metamoji/ui/PopupCommand;->CABINET_EDIT_NOTE:Lcom/metamoji/ui/PopupCommand;

    sget v10, Lcom/metamoji/noteanytime/R$string;->Cabinet_ContextMenu_Edit:I

    sget v11, Lcom/metamoji/noteanytime/R$drawable;->mnu_icon_open_note:I

    sget v12, Lcom/metamoji/noteanytime/R$drawable;->mnu_icon_open_note:I

    const/4 v9, 0x0

    invoke-direct/range {v7 .. v12}, Lcom/metamoji/ui/UiMenuItem;-><init>(Lcom/metamoji/ui/PopupCommand;Ljava/lang/Object;III)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1524
    :cond_6
    invoke-static {}, Lcom/metamoji/nt/NtFeatureManager;->getInstance()Lcom/metamoji/nt/NtFeatureManager;

    move-result-object v1

    sget-object v4, Lcom/metamoji/nt/NtFeature;->CabinetExport:Lcom/metamoji/nt/NtFeature;

    invoke-virtual {v1, v4}, Lcom/metamoji/nt/NtFeatureManager;->isAvailable(Lcom/metamoji/nt/NtFeature;)Z

    move-result v1

    if-eqz v1, :cond_7

    if-nez v3, :cond_7

    .line 1525
    invoke-static {}, Lcom/metamoji/nt/NtFeatureManager;->getInstance()Lcom/metamoji/nt/NtFeatureManager;

    move-result-object v1

    sget-object v4, Lcom/metamoji/nt/NtFeature;->AppUnavailableSendByFile:Lcom/metamoji/nt/NtFeature;

    invoke-virtual {v1, v4}, Lcom/metamoji/nt/NtFeatureManager;->isAvailable(Lcom/metamoji/nt/NtFeature;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 1527
    new-instance v7, Lcom/metamoji/ui/UiMenuItem;

    sget-object v8, Lcom/metamoji/ui/PopupCommand;->CABINET_EXPORT_NOTES:Lcom/metamoji/ui/PopupCommand;

    sget v10, Lcom/metamoji/noteanytime/R$string;->Cabinet_Multiselect_Export_Button_Label:I

    sget v11, Lcom/metamoji/noteanytime/R$drawable;->mnu_icon_send_anytime:I

    sget v12, Lcom/metamoji/noteanytime/R$drawable;->mnu_icon_send_anytime:I

    const/4 v9, 0x0

    invoke-direct/range {v7 .. v12}, Lcom/metamoji/ui/UiMenuItem;-><init>(Lcom/metamoji/ui/PopupCommand;Ljava/lang/Object;III)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1531
    :cond_7
    invoke-static {}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->getCurrentFolder()Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getType()Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    move-result-object v1

    sget-object v4, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->TEMPLATE:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    if-eq v1, v4, :cond_10

    .line 1534
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v1

    .line 1535
    invoke-virtual {v1}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v1

    if-nez v1, :cond_9

    invoke-static {}, Lcom/metamoji/nt/NtFeatureManager;->getInstance()Lcom/metamoji/nt/NtFeatureManager;

    move-result-object v1

    sget-object v4, Lcom/metamoji/nt/NtFeature;->AppStudentEditClassboxNote:Lcom/metamoji/nt/NtFeature;

    invoke-virtual {v1, v4}, Lcom/metamoji/nt/NtFeatureManager;->isAvailable(Lcom/metamoji/nt/NtFeature;)Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_2

    .line 1538
    :cond_8
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$23;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {v1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fget_currentDisplayedFolder(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getDriveId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    goto :goto_3

    :cond_9
    :goto_2
    move v2, v6

    :goto_3
    if-eqz v2, :cond_a

    if-nez v3, :cond_a

    .line 1546
    new-instance v4, Lcom/metamoji/ui/UiMenuItem;

    sget-object v5, Lcom/metamoji/ui/PopupCommand;->CABINET_COPY_NOTE:Lcom/metamoji/ui/PopupCommand;

    sget v7, Lcom/metamoji/noteanytime/R$string;->Cabinet_Folder_Copy:I

    sget v8, Lcom/metamoji/noteanytime/R$drawable;->mnu_icon_copy_note:I

    sget v9, Lcom/metamoji/noteanytime/R$drawable;->mnu_icon_copy_note:I

    const/4 v6, 0x0

    invoke-direct/range {v4 .. v9}, Lcom/metamoji/ui/UiMenuItem;-><init>(Lcom/metamoji/ui/PopupCommand;Ljava/lang/Object;III)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1551
    :cond_a
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v1

    if-nez v1, :cond_b

    invoke-static {}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->getCurrentFolder()Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getGroupId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_c

    .line 1554
    :cond_b
    invoke-static {}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->getCurrentFolder()Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getType()Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    move-result-object v1

    sget-object v3, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->ALL_NOTE:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    if-eq v1, v3, :cond_c

    .line 1557
    invoke-static {}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->getCurrentFolder()Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/noteanytime/CabinetCommandManager;->isEnableMakeFolder(Lcom/metamoji/ui/cabinet/CabinetTreeItem;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1559
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$23;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {v1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fget_currentDisplayedFolder(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getDriveId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/ui/cabinet/CabinetUtils;->hasFolder(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1561
    new-instance v3, Lcom/metamoji/ui/UiMenuItem;

    sget-object v4, Lcom/metamoji/ui/PopupCommand;->CABINET_MOVE_NOTE:Lcom/metamoji/ui/PopupCommand;

    sget v6, Lcom/metamoji/noteanytime/R$string;->Cabinet_Folder_Move:I

    sget v7, Lcom/metamoji/noteanytime/R$drawable;->mnu_icon_move_note:I

    sget v8, Lcom/metamoji/noteanytime/R$drawable;->mnu_icon_move_note:I

    const/4 v5, 0x0

    invoke-direct/range {v3 .. v8}, Lcom/metamoji/ui/UiMenuItem;-><init>(Lcom/metamoji/ui/PopupCommand;Ljava/lang/Object;III)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c
    if-eqz v2, :cond_d

    .line 1568
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$23;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-virtual {v1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->isMultiSelectedNote()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1569
    new-instance v2, Lcom/metamoji/ui/UiMenuItem;

    sget-object v3, Lcom/metamoji/ui/PopupCommand;->CABINET_MERGE_NOTES:Lcom/metamoji/ui/PopupCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_MERGE_NOTES:I

    sget v6, Lcom/metamoji/noteanytime/R$drawable;->merge_notes:I

    sget v7, Lcom/metamoji/noteanytime/R$drawable;->merge_notes:I

    const/4 v4, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/metamoji/ui/UiMenuItem;-><init>(Lcom/metamoji/ui/PopupCommand;Ljava/lang/Object;III)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1573
    :cond_d
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1574
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$23;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-virtual {v1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->isSelectedNote()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1575
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$23;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-virtual {v1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->isMultiSelectedNote()Z

    move-result v1

    if-nez v1, :cond_e

    iget-object v1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$23;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-virtual {v1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->isSelectedShareNoteOnly()Z

    move-result v1

    if-eqz v1, :cond_e

    goto :goto_4

    .line 1577
    :cond_e
    new-instance v2, Lcom/metamoji/ui/UiMenuItem;

    sget-object v3, Lcom/metamoji/ui/PopupCommand;->CABINET_DISTRIBUTE_NOTES:Lcom/metamoji/ui/PopupCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_DELIVER_AS_CLASS_NOTE:I

    sget v6, Lcom/metamoji/noteanytime/R$drawable;->menu_icon_share_make_n:I

    sget v7, Lcom/metamoji/noteanytime/R$drawable;->menu_icon_share_make_n:I

    const/4 v4, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/metamoji/ui/UiMenuItem;-><init>(Lcom/metamoji/ui/PopupCommand;Ljava/lang/Object;III)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1584
    :cond_f
    :goto_4
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$23;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {v1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fget_currentDisplayedFolder(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getDriveId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_10

    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v1

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$23;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-virtual {v1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->isSelectedShareNoteOnly()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 1585
    new-instance v2, Lcom/metamoji/ui/UiMenuItem;

    sget-object v3, Lcom/metamoji/ui/PopupCommand;->CABINET_SCORE_LIST:Lcom/metamoji/ui/PopupCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_SCOREINFOVIEW_MENU_SCORELIST:I

    sget v6, Lcom/metamoji/noteanytime/R$drawable;->mnu_icon_school_scorelist:I

    sget v7, Lcom/metamoji/noteanytime/R$drawable;->mnu_icon_school_scorelist:I

    const/4 v4, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/metamoji/ui/UiMenuItem;-><init>(Lcom/metamoji/ui/PopupCommand;Ljava/lang/Object;III)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1589
    :cond_10
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_11

    .line 1590
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$23;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {v1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fget_activity(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$23;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {v1, v0, v2, p1}, Lcom/metamoji/noteanytime/MainActivity;->showActionMenu(Landroidx/fragment/app/FragmentActivity;Ljava/util/ArrayList;Lcom/metamoji/ui/MenuEventListener;Landroid/view/View;)V

    :cond_11
    return-void
.end method
