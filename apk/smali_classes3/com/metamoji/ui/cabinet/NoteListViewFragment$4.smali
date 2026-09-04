.class Lcom/metamoji/ui/cabinet/NoteListViewFragment$4;
.super Ljava/lang/Object;
.source "NoteListViewFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/cabinet/NoteListViewFragment;->onResume()V
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

    .line 685
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$4;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 688
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$4;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fput_userDefaults(Lcom/metamoji/ui/cabinet/NoteListViewFragment;Lcom/metamoji/nt/NtUserDefaults;)V

    .line 690
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$4;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fget_shareBtn(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Landroid/widget/ImageButton;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 691
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$4;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {v0, v2}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fput_squeezeShare(Lcom/metamoji/ui/cabinet/NoteListViewFragment;Z)V

    .line 692
    invoke-static {}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$MvDispNoteType;->values()[Lcom/metamoji/ui/cabinet/NoteListViewFragment$MvDispNoteType;

    move-result-object v0

    .line 693
    iget-object v3, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$4;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {v3}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fget_userDefaults(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v3

    sget-object v4, Lcom/metamoji/ui/cabinet/NoteListViewFragment$MvDispNoteType;->MvDispNoteType_Normal:Lcom/metamoji/ui/cabinet/NoteListViewFragment$MvDispNoteType;

    invoke-virtual {v4}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$MvDispNoteType;->ordinal()I

    move-result v4

    const-string v5, "MMJNtCabinetDispNoteType"

    invoke-virtual {v3, v5, v4}, Lcom/metamoji/nt/NtUserDefaults;->getIntValue(Ljava/lang/String;I)I

    move-result v3

    .line 694
    aget-object v0, v0, v3

    .line 695
    sget-object v3, Lcom/metamoji/ui/cabinet/NoteListViewFragment$MvDispNoteType;->MvDispNoteType_ShareOnly:Lcom/metamoji/ui/cabinet/NoteListViewFragment$MvDispNoteType;

    if-ne v0, v3, :cond_0

    .line 696
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$4;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {v0, v1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fput_squeezeShare(Lcom/metamoji/ui/cabinet/NoteListViewFragment;Z)V

    .line 699
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$4;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$4;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {v4}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fget_shareBtn(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Landroid/widget/ImageButton;

    move-result-object v4

    iget-object v5, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$4;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {v5}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fget_squeezeShare(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Z

    move-result v5

    invoke-virtual {v0, v3, v4, v5}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->changeShareBtnImage(Landroidx/fragment/app/FragmentActivity;Landroid/widget/ImageButton;Z)V

    .line 703
    :cond_1
    invoke-static {}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$NoteListModeType;->values()[Lcom/metamoji/ui/cabinet/NoteListViewFragment$NoteListModeType;

    move-result-object v0

    .line 704
    iget-object v3, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$4;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {v3}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fget_userDefaults(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v3

    sget-object v4, Lcom/metamoji/ui/cabinet/NoteListViewFragment$NoteListModeType;->NoteListModeType_Normal:Lcom/metamoji/ui/cabinet/NoteListViewFragment$NoteListModeType;

    invoke-virtual {v4}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$NoteListModeType;->ordinal()I

    move-result v4

    const-string v5, "CabinetViewMode2"

    invoke-virtual {v3, v5, v4}, Lcom/metamoji/nt/NtUserDefaults;->getIntValue(Ljava/lang/String;I)I

    move-result v3

    .line 705
    aget-object v0, v0, v3

    .line 706
    iget-object v3, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$4;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {v3, v0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fput_NoteListMode(Lcom/metamoji/ui/cabinet/NoteListViewFragment;Lcom/metamoji/ui/cabinet/NoteListViewFragment$NoteListModeType;)V

    .line 707
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$4;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fget_currentDisplayedFolder(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->updateNoteListView(Lcom/metamoji/ui/cabinet/CabinetTreeItem;)V

    .line 708
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$4;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fget_NoteListMode(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Lcom/metamoji/ui/cabinet/NoteListViewFragment$NoteListModeType;

    move-result-object v0

    sget-object v3, Lcom/metamoji/ui/cabinet/NoteListViewFragment$NoteListModeType;->NoteListModeType_Normal:Lcom/metamoji/ui/cabinet/NoteListViewFragment$NoteListModeType;

    .line 727
    iget-object v4, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$4;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    const/4 v5, 0x4

    if-ne v0, v3, :cond_7

    .line 709
    invoke-static {v4}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fget_normalModeBtn(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Landroid/widget/ImageButton;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 710
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$4;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fget_normalModeBtn(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 712
    :cond_2
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$4;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fget_detailModeBtn(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Landroid/widget/ImageButton;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 713
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$4;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fget_detailModeBtn(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 715
    :cond_3
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$4;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fget_simpleModeBtn(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Landroid/widget/ImageButton;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 716
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$4;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fget_simpleModeBtn(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 718
    :cond_4
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$4;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fget_normalView(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Lcom/metamoji/ui/cabinet/NoteListGridView;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 719
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$4;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fget_normalView(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Lcom/metamoji/ui/cabinet/NoteListGridView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/metamoji/ui/cabinet/NoteListGridView;->setVisibility(I)V

    .line 721
    :cond_5
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$4;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fget_detailView(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Lcom/metamoji/ui/cabinet/DetailGridView;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 722
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$4;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fget_detailView(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Lcom/metamoji/ui/cabinet/DetailGridView;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/metamoji/ui/cabinet/DetailGridView;->setVisibility(I)V

    .line 724
    :cond_6
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$4;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fget_simpleView(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Lcom/metamoji/ui/cabinet/SimpleGridView;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 725
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$4;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fget_simpleView(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Lcom/metamoji/ui/cabinet/SimpleGridView;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/metamoji/ui/cabinet/SimpleGridView;->setVisibility(I)V

    goto/16 :goto_0

    .line 727
    :cond_7
    invoke-static {v4}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fget_NoteListMode(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Lcom/metamoji/ui/cabinet/NoteListViewFragment$NoteListModeType;

    move-result-object v0

    sget-object v3, Lcom/metamoji/ui/cabinet/NoteListViewFragment$NoteListModeType;->NoteListModeType_Detail:Lcom/metamoji/ui/cabinet/NoteListViewFragment$NoteListModeType;

    .line 747
    iget-object v4, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$4;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    if-ne v0, v3, :cond_d

    .line 728
    invoke-static {v4}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fget_normalModeBtn(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Landroid/widget/ImageButton;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 729
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$4;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fget_normalModeBtn(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 731
    :cond_8
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$4;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fget_detailModeBtn(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Landroid/widget/ImageButton;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 732
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$4;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fget_detailModeBtn(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 734
    :cond_9
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$4;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fget_simpleModeBtn(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Landroid/widget/ImageButton;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 735
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$4;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fget_simpleModeBtn(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 737
    :cond_a
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$4;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fget_normalView(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Lcom/metamoji/ui/cabinet/NoteListGridView;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 738
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$4;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fget_normalView(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Lcom/metamoji/ui/cabinet/NoteListGridView;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/metamoji/ui/cabinet/NoteListGridView;->setVisibility(I)V

    .line 740
    :cond_b
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$4;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fget_detailView(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Lcom/metamoji/ui/cabinet/DetailGridView;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 741
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$4;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fget_detailView(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Lcom/metamoji/ui/cabinet/DetailGridView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/metamoji/ui/cabinet/DetailGridView;->setVisibility(I)V

    .line 743
    :cond_c
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$4;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fget_simpleView(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Lcom/metamoji/ui/cabinet/SimpleGridView;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 744
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$4;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fget_simpleView(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Lcom/metamoji/ui/cabinet/SimpleGridView;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/metamoji/ui/cabinet/SimpleGridView;->setVisibility(I)V

    goto :goto_0

    .line 747
    :cond_d
    invoke-static {v4}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fget_normalModeBtn(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Landroid/widget/ImageButton;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 748
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$4;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fget_normalModeBtn(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 750
    :cond_e
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$4;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fget_detailModeBtn(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Landroid/widget/ImageButton;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 751
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$4;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fget_detailModeBtn(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 753
    :cond_f
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$4;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fget_simpleModeBtn(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Landroid/widget/ImageButton;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 754
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$4;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fget_simpleModeBtn(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 756
    :cond_10
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$4;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fget_normalView(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Lcom/metamoji/ui/cabinet/NoteListGridView;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 757
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$4;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fget_normalView(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Lcom/metamoji/ui/cabinet/NoteListGridView;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/metamoji/ui/cabinet/NoteListGridView;->setVisibility(I)V

    .line 759
    :cond_11
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$4;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fget_detailView(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Lcom/metamoji/ui/cabinet/DetailGridView;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 760
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$4;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fget_detailView(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Lcom/metamoji/ui/cabinet/DetailGridView;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/metamoji/ui/cabinet/DetailGridView;->setVisibility(I)V

    .line 762
    :cond_12
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$4;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fget_simpleView(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Lcom/metamoji/ui/cabinet/SimpleGridView;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 763
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$4;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fget_simpleView(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Lcom/metamoji/ui/cabinet/SimpleGridView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/metamoji/ui/cabinet/SimpleGridView;->setVisibility(I)V

    .line 768
    :cond_13
    :goto_0
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$4;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fget_userDefaults(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v0

    const-string v1, "CabinetSortKey"

    const-string/jumbo v3, "update"

    invoke-virtual {v0, v1, v3}, Lcom/metamoji/nt/NtUserDefaults;->getStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/noteanytime/MainActivity;->setNoteListSortKey(Ljava/lang/String;)V

    .line 769
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$4;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fget_userDefaults(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v0

    const-string v1, "CabinetAscending"

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/nt/NtUserDefaults;->getBoolValue(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Lcom/metamoji/noteanytime/MainActivity;->setNoteListAscending(Z)V

    return-void
.end method
