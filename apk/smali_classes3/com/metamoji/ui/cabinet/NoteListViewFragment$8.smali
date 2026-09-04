.class Lcom/metamoji/ui/cabinet/NoteListViewFragment$8;
.super Ljava/lang/Object;
.source "NoteListViewFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/cabinet/NoteListViewFragment;->prepareModeChangeButton()V
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

    .line 1133
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$8;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1136
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne v1, p1, :cond_3

    .line 1137
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$8;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    sget-object p2, Lcom/metamoji/ui/cabinet/NoteListViewFragment$NoteListModeType;->NoteListModeType_Simple:Lcom/metamoji/ui/cabinet/NoteListViewFragment$NoteListModeType;

    invoke-static {p1, p2}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fput_NoteListMode(Lcom/metamoji/ui/cabinet/NoteListViewFragment;Lcom/metamoji/ui/cabinet/NoteListViewFragment$NoteListModeType;)V

    .line 1138
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$8;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {p1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fget_userDefaults(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Lcom/metamoji/nt/NtUserDefaults;

    move-result-object p1

    iget-object p2, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$8;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {p2}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fget_NoteListMode(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Lcom/metamoji/ui/cabinet/NoteListViewFragment$NoteListModeType;

    move-result-object p2

    invoke-virtual {p2}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$NoteListModeType;->ordinal()I

    move-result p2

    const-string v2, "CabinetViewMode2"

    invoke-virtual {p1, v2, p2}, Lcom/metamoji/nt/NtUserDefaults;->setValue(Ljava/lang/String;I)V

    .line 1139
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$8;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {p1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fget_currentDisplayedFolder(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->updateNoteListView(Lcom/metamoji/ui/cabinet/CabinetTreeItem;)V

    .line 1140
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$8;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {p1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fget_simpleModeBtn(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Landroid/widget/ImageButton;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 1141
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$8;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {p1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fget_simpleView(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Lcom/metamoji/ui/cabinet/SimpleGridView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1142
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$8;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {p1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fget_simpleView(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Lcom/metamoji/ui/cabinet/SimpleGridView;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/metamoji/ui/cabinet/SimpleGridView;->setVisibility(I)V

    .line 1144
    :cond_0
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$8;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {p1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fget_detailView(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Lcom/metamoji/ui/cabinet/DetailGridView;

    move-result-object p1

    const/4 p2, 0x4

    if-eqz p1, :cond_1

    .line 1145
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$8;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {p1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fget_detailView(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Lcom/metamoji/ui/cabinet/DetailGridView;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/metamoji/ui/cabinet/DetailGridView;->setVisibility(I)V

    .line 1147
    :cond_1
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$8;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {p1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fget_normalView(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Lcom/metamoji/ui/cabinet/NoteListGridView;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1148
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$8;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {p1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fget_normalView(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Lcom/metamoji/ui/cabinet/NoteListGridView;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/metamoji/ui/cabinet/NoteListGridView;->setVisibility(I)V

    :cond_2
    return v1

    .line 1151
    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_4

    .line 1152
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$8;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {p1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fget_normalModeBtn(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Landroid/widget/ImageButton;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 1153
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$8;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {p1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fget_detailModeBtn(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Landroid/widget/ImageButton;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setSelected(Z)V

    :cond_4
    return v0
.end method
