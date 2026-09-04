.class Lcom/metamoji/ui/dialog/SelectNote$4;
.super Landroid/widget/ArrayAdapter;
.source "SelectNote.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/dialog/SelectNote;->prepareNormalView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/metamoji/ui/dialog/SelectNote$SelectNoteItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/dialog/SelectNote;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/dialog/SelectNote;Landroid/content/Context;ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 791
    iput-object p1, p0, Lcom/metamoji/ui/dialog/SelectNote$4;->this$0:Lcom/metamoji/ui/dialog/SelectNote;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    if-ltz p1, :cond_e

    .line 794
    iget-object v0, p0, Lcom/metamoji/ui/dialog/SelectNote$4;->this$0:Lcom/metamoji/ui/dialog/SelectNote;

    invoke-static {v0}, Lcom/metamoji/ui/dialog/SelectNote;->-$$Nest$fget_itemList(Lcom/metamoji/ui/dialog/SelectNote;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v0, p1, :cond_0

    goto/16 :goto_6

    .line 798
    :cond_0
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/dialog/SelectNote$4;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/ui/dialog/SelectNote$SelectNoteItem;

    if-eqz p2, :cond_2

    .line 800
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ui/dialog/SelectNote$NormalViewHolder;

    invoke-virtual {v0}, Lcom/metamoji/ui/dialog/SelectNote$NormalViewHolder;->getType()Lcom/metamoji/ui/dialog/SelectNote$NoteListItemType;

    move-result-object v0

    invoke-static {p1}, Lcom/metamoji/ui/dialog/SelectNote$SelectNoteItem;->-$$Nest$fget_type(Lcom/metamoji/ui/dialog/SelectNote$SelectNoteItem;)Lcom/metamoji/ui/dialog/SelectNote$NoteListItemType;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 902
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/metamoji/ui/dialog/SelectNote$NormalViewHolder;

    goto/16 :goto_5

    .line 803
    :cond_2
    :goto_0
    sget-object v0, Lcom/metamoji/ui/dialog/SelectNote$NoteListItemType;->NoteListItemType_Folder:Lcom/metamoji/ui/dialog/SelectNote$NoteListItemType;

    invoke-static {p1}, Lcom/metamoji/ui/dialog/SelectNote$SelectNoteItem;->-$$Nest$fget_type(Lcom/metamoji/ui/dialog/SelectNote$SelectNoteItem;)Lcom/metamoji/ui/dialog/SelectNote$NoteListItemType;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-ne v0, v1, :cond_3

    .line 804
    iget-object v0, p0, Lcom/metamoji/ui/dialog/SelectNote$4;->this$0:Lcom/metamoji/ui/dialog/SelectNote;

    invoke-virtual {v0}, Lcom/metamoji/ui/dialog/SelectNote;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 805
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/metamoji/noteanytime/R$layout;->item_cabinet_normal_folder:I

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 806
    new-instance v0, Lcom/metamoji/ui/dialog/SelectNote$NormalFolderViewHolder;

    invoke-direct {v0, v3}, Lcom/metamoji/ui/dialog/SelectNote$NormalFolderViewHolder;-><init>(Lcom/metamoji/ui/dialog/SelectNote-IA;)V

    .line 807
    sget v1, Lcom/metamoji/noteanytime/R$id;->thumbnail:I

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/metamoji/ui/dialog/SelectNote$NormalFolderViewHolder;->_thumbnail:Landroid/widget/ImageView;

    .line 808
    sget v1, Lcom/metamoji/noteanytime/R$id;->mainText:I

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/metamoji/ui/dialog/SelectNote$NormalFolderViewHolder;->_mainText:Landroid/widget/TextView;

    .line 809
    sget v1, Lcom/metamoji/noteanytime/R$id;->subText:I

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/metamoji/ui/dialog/SelectNote$NormalFolderViewHolder;->_subText:Landroid/widget/TextView;

    .line 811
    iget-object v1, v0, Lcom/metamoji/ui/dialog/SelectNote$NormalFolderViewHolder;->_thumbnail:Landroid/widget/ImageView;

    sget v2, Lcom/metamoji/noteanytime/R$drawable;->cabinet_thumb_folder:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 812
    iget-object v1, v0, Lcom/metamoji/ui/dialog/SelectNote$NormalFolderViewHolder;->_thumbnail:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/metamoji/ui/dialog/SelectNote$4;->this$0:Lcom/metamoji/ui/dialog/SelectNote;

    invoke-static {v2}, Lcom/metamoji/ui/dialog/SelectNote;->-$$Nest$fget_normalThumbOnTouchListner(Lcom/metamoji/ui/dialog/SelectNote;)Landroid/view/View$OnTouchListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :goto_1
    move-object v3, p3

    move-object p3, v0

    goto/16 :goto_4

    .line 816
    :cond_3
    sget-object v0, Lcom/metamoji/ui/dialog/SelectNote$NoteListItemType;->NoteListItemType_Note:Lcom/metamoji/ui/dialog/SelectNote$NoteListItemType;

    invoke-static {p1}, Lcom/metamoji/ui/dialog/SelectNote$SelectNoteItem;->-$$Nest$fget_type(Lcom/metamoji/ui/dialog/SelectNote$SelectNoteItem;)Lcom/metamoji/ui/dialog/SelectNote$NoteListItemType;

    move-result-object v1

    if-ne v0, v1, :cond_5

    .line 817
    iget-object v0, p0, Lcom/metamoji/ui/dialog/SelectNote$4;->this$0:Lcom/metamoji/ui/dialog/SelectNote;

    invoke-virtual {v0}, Lcom/metamoji/ui/dialog/SelectNote;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 818
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/metamoji/noteanytime/R$layout;->item_cabinet_normal_doc:I

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 819
    new-instance v0, Lcom/metamoji/ui/dialog/SelectNote$NormalDocumentViewHolder;

    invoke-direct {v0, v3}, Lcom/metamoji/ui/dialog/SelectNote$NormalDocumentViewHolder;-><init>(Lcom/metamoji/ui/dialog/SelectNote-IA;)V

    .line 820
    sget v1, Lcom/metamoji/noteanytime/R$id;->thumbnail:I

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/metamoji/ui/dialog/SelectNote$NormalDocumentViewHolder;->_thumbnail:Landroid/widget/ImageView;

    .line 821
    sget v1, Lcom/metamoji/noteanytime/R$id;->mainText:I

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/metamoji/ui/dialog/SelectNote$NormalDocumentViewHolder;->_mainText:Landroid/widget/TextView;

    .line 822
    sget v1, Lcom/metamoji/noteanytime/R$id;->subText:I

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/metamoji/ui/dialog/SelectNote$NormalDocumentViewHolder;->_subText:Landroid/widget/TextView;

    .line 823
    sget v1, Lcom/metamoji/noteanytime/R$id;->cabinetnotetemplateicon:I

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/metamoji/ui/dialog/SelectNote$NormalDocumentViewHolder;->_templateIcon:Landroid/widget/ImageView;

    .line 824
    sget v1, Lcom/metamoji/noteanytime/R$id;->cabinetshareicon:I

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/metamoji/ui/dialog/SelectNote$NormalDocumentViewHolder;->_shareIcon:Landroid/widget/ImageView;

    .line 825
    iget-object v1, p0, Lcom/metamoji/ui/dialog/SelectNote$4;->this$0:Lcom/metamoji/ui/dialog/SelectNote;

    iget-object v3, v0, Lcom/metamoji/ui/dialog/SelectNote$NormalDocumentViewHolder;->_templateIcon:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/metamoji/ui/dialog/SelectNote$4;->this$0:Lcom/metamoji/ui/dialog/SelectNote;

    invoke-static {p1}, Lcom/metamoji/ui/dialog/SelectNote$SelectNoteItem;->-$$Nest$fget_metadata(Lcom/metamoji/ui/dialog/SelectNote$SelectNoteItem;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/metamoji/ui/dialog/SelectNote;->-$$Nest$misTemplate(Lcom/metamoji/ui/dialog/SelectNote;Ljava/lang/Object;)Z

    move-result v4

    invoke-static {v1, v3, v4}, Lcom/metamoji/ui/dialog/SelectNote;->-$$Nest$msetTemplateIconVisibility(Lcom/metamoji/ui/dialog/SelectNote;Landroid/widget/ImageView;Z)V

    .line 826
    iget-object v1, v0, Lcom/metamoji/ui/dialog/SelectNote$NormalDocumentViewHolder;->_shareIcon:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/metamoji/ui/dialog/SelectNote$4;->this$0:Lcom/metamoji/ui/dialog/SelectNote;

    invoke-static {p1}, Lcom/metamoji/ui/dialog/SelectNote$SelectNoteItem;->-$$Nest$fget_metadata(Lcom/metamoji/ui/dialog/SelectNote$SelectNoteItem;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/metamoji/ui/dialog/SelectNote;->-$$Nest$misShareNote(Lcom/metamoji/ui/dialog/SelectNote;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_2

    :cond_4
    const/16 v2, 0x8

    :goto_2
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 827
    iget-object v1, v0, Lcom/metamoji/ui/dialog/SelectNote$NormalDocumentViewHolder;->_thumbnail:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/metamoji/ui/dialog/SelectNote$4;->this$0:Lcom/metamoji/ui/dialog/SelectNote;

    invoke-static {v2}, Lcom/metamoji/ui/dialog/SelectNote;->-$$Nest$fget_normalThumbOnTouchListner(Lcom/metamoji/ui/dialog/SelectNote;)Landroid/view/View$OnTouchListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto/16 :goto_1

    .line 830
    :cond_5
    sget-object v0, Lcom/metamoji/ui/dialog/SelectNote$NoteListItemType;->NoteListItemType_Back:Lcom/metamoji/ui/dialog/SelectNote$NoteListItemType;

    invoke-static {p1}, Lcom/metamoji/ui/dialog/SelectNote$SelectNoteItem;->-$$Nest$fget_type(Lcom/metamoji/ui/dialog/SelectNote$SelectNoteItem;)Lcom/metamoji/ui/dialog/SelectNote$NoteListItemType;

    move-result-object v1

    if-ne v0, v1, :cond_6

    .line 831
    iget-object v0, p0, Lcom/metamoji/ui/dialog/SelectNote$4;->this$0:Lcom/metamoji/ui/dialog/SelectNote;

    invoke-virtual {v0}, Lcom/metamoji/ui/dialog/SelectNote;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 832
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/metamoji/noteanytime/R$layout;->item_cabinet_normal_folder:I

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 833
    new-instance v0, Lcom/metamoji/ui/dialog/SelectNote$NormalFolderBackViewHolder;

    invoke-direct {v0, v3}, Lcom/metamoji/ui/dialog/SelectNote$NormalFolderBackViewHolder;-><init>(Lcom/metamoji/ui/dialog/SelectNote-IA;)V

    .line 834
    sget v1, Lcom/metamoji/noteanytime/R$id;->thumbnail:I

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/metamoji/ui/dialog/SelectNote$NormalFolderBackViewHolder;->_thumbnail:Landroid/widget/ImageView;

    .line 835
    sget v1, Lcom/metamoji/noteanytime/R$id;->mainText:I

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/metamoji/ui/dialog/SelectNote$NormalFolderBackViewHolder;->_mainText:Landroid/widget/TextView;

    .line 836
    sget v1, Lcom/metamoji/noteanytime/R$id;->subText:I

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/metamoji/ui/dialog/SelectNote$NormalFolderBackViewHolder;->_subText:Landroid/widget/TextView;

    .line 838
    iget-object v1, v0, Lcom/metamoji/ui/dialog/SelectNote$NormalFolderBackViewHolder;->_thumbnail:Landroid/widget/ImageView;

    sget v2, Lcom/metamoji/noteanytime/R$drawable;->cabinet_thumb_folderback:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 839
    iget-object v1, v0, Lcom/metamoji/ui/dialog/SelectNote$NormalFolderBackViewHolder;->_thumbnail:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/metamoji/ui/dialog/SelectNote$4;->this$0:Lcom/metamoji/ui/dialog/SelectNote;

    invoke-static {v2}, Lcom/metamoji/ui/dialog/SelectNote;->-$$Nest$fget_normalThumbOnTouchListner(Lcom/metamoji/ui/dialog/SelectNote;)Landroid/view/View$OnTouchListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto/16 :goto_1

    .line 843
    :cond_6
    sget-object v0, Lcom/metamoji/ui/dialog/SelectNote$NoteListItemType;->NoteListItemType_LocalDrive:Lcom/metamoji/ui/dialog/SelectNote$NoteListItemType;

    invoke-static {p1}, Lcom/metamoji/ui/dialog/SelectNote$SelectNoteItem;->-$$Nest$fget_type(Lcom/metamoji/ui/dialog/SelectNote$SelectNoteItem;)Lcom/metamoji/ui/dialog/SelectNote$NoteListItemType;

    move-result-object v1

    if-ne v0, v1, :cond_7

    .line 844
    iget-object v0, p0, Lcom/metamoji/ui/dialog/SelectNote$4;->this$0:Lcom/metamoji/ui/dialog/SelectNote;

    invoke-virtual {v0}, Lcom/metamoji/ui/dialog/SelectNote;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/metamoji/noteanytime/R$layout;->item_cabinet_normal_folder:I

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 845
    new-instance v0, Lcom/metamoji/ui/dialog/SelectNote$NormalLocalRootViewHolder;

    invoke-direct {v0, v3}, Lcom/metamoji/ui/dialog/SelectNote$NormalLocalRootViewHolder;-><init>(Lcom/metamoji/ui/dialog/SelectNote-IA;)V

    .line 846
    sget v1, Lcom/metamoji/noteanytime/R$id;->thumbnail:I

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/metamoji/ui/dialog/SelectNote$NormalLocalRootViewHolder;->_thumbnail:Landroid/widget/ImageView;

    .line 847
    sget v1, Lcom/metamoji/noteanytime/R$id;->mainText:I

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/metamoji/ui/dialog/SelectNote$NormalLocalRootViewHolder;->_mainText:Landroid/widget/TextView;

    .line 848
    sget v1, Lcom/metamoji/noteanytime/R$id;->subText:I

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/metamoji/ui/dialog/SelectNote$NormalLocalRootViewHolder;->_subText:Landroid/widget/TextView;

    .line 849
    iget-object v1, v0, Lcom/metamoji/ui/dialog/SelectNote$NormalLocalRootViewHolder;->_thumbnail:Landroid/widget/ImageView;

    sget v2, Lcom/metamoji/noteanytime/R$drawable;->design1_thumb_mydrive:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 850
    iget-object v1, v0, Lcom/metamoji/ui/dialog/SelectNote$NormalLocalRootViewHolder;->_thumbnail:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/metamoji/ui/dialog/SelectNote$4;->this$0:Lcom/metamoji/ui/dialog/SelectNote;

    invoke-static {v2}, Lcom/metamoji/ui/dialog/SelectNote;->-$$Nest$fget_normalThumbOnTouchListner(Lcom/metamoji/ui/dialog/SelectNote;)Landroid/view/View$OnTouchListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto/16 :goto_1

    .line 855
    :cond_7
    sget-object v0, Lcom/metamoji/ui/dialog/SelectNote$NoteListItemType;->NoteListItemType_Template:Lcom/metamoji/ui/dialog/SelectNote$NoteListItemType;

    invoke-static {p1}, Lcom/metamoji/ui/dialog/SelectNote$SelectNoteItem;->-$$Nest$fget_type(Lcom/metamoji/ui/dialog/SelectNote$SelectNoteItem;)Lcom/metamoji/ui/dialog/SelectNote$NoteListItemType;

    move-result-object v1

    if-ne v0, v1, :cond_8

    .line 856
    iget-object v0, p0, Lcom/metamoji/ui/dialog/SelectNote$4;->this$0:Lcom/metamoji/ui/dialog/SelectNote;

    invoke-virtual {v0}, Lcom/metamoji/ui/dialog/SelectNote;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/metamoji/noteanytime/R$layout;->item_cabinet_normal_folder:I

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 857
    new-instance v0, Lcom/metamoji/ui/dialog/SelectNote$NormalTemplateViewHolder;

    invoke-direct {v0, v3}, Lcom/metamoji/ui/dialog/SelectNote$NormalTemplateViewHolder;-><init>(Lcom/metamoji/ui/dialog/SelectNote-IA;)V

    .line 858
    sget v1, Lcom/metamoji/noteanytime/R$id;->thumbnail:I

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/metamoji/ui/dialog/SelectNote$NormalTemplateViewHolder;->_thumbnail:Landroid/widget/ImageView;

    .line 859
    sget v1, Lcom/metamoji/noteanytime/R$id;->mainText:I

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/metamoji/ui/dialog/SelectNote$NormalTemplateViewHolder;->_mainText:Landroid/widget/TextView;

    .line 860
    sget v1, Lcom/metamoji/noteanytime/R$id;->subText:I

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/metamoji/ui/dialog/SelectNote$NormalTemplateViewHolder;->_subText:Landroid/widget/TextView;

    .line 862
    iget-object v1, v0, Lcom/metamoji/ui/dialog/SelectNote$NormalTemplateViewHolder;->_thumbnail:Landroid/widget/ImageView;

    sget v2, Lcom/metamoji/noteanytime/R$drawable;->cabinet_thumb_templatenote:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 863
    iget-object v1, v0, Lcom/metamoji/ui/dialog/SelectNote$NormalTemplateViewHolder;->_thumbnail:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/metamoji/ui/dialog/SelectNote$4;->this$0:Lcom/metamoji/ui/dialog/SelectNote;

    invoke-static {v2}, Lcom/metamoji/ui/dialog/SelectNote;->-$$Nest$fget_normalThumbOnTouchListner(Lcom/metamoji/ui/dialog/SelectNote;)Landroid/view/View$OnTouchListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto/16 :goto_1

    .line 868
    :cond_8
    sget-object v0, Lcom/metamoji/ui/dialog/SelectNote$NoteListItemType;->NoteListItemType_SharedDrive:Lcom/metamoji/ui/dialog/SelectNote$NoteListItemType;

    invoke-static {p1}, Lcom/metamoji/ui/dialog/SelectNote$SelectNoteItem;->-$$Nest$fget_type(Lcom/metamoji/ui/dialog/SelectNote$SelectNoteItem;)Lcom/metamoji/ui/dialog/SelectNote$NoteListItemType;

    move-result-object v1

    if-ne v0, v1, :cond_a

    .line 869
    iget-object v0, p0, Lcom/metamoji/ui/dialog/SelectNote$4;->this$0:Lcom/metamoji/ui/dialog/SelectNote;

    invoke-virtual {v0}, Lcom/metamoji/ui/dialog/SelectNote;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/metamoji/noteanytime/R$layout;->item_cabinet_normal_folder:I

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 870
    new-instance v0, Lcom/metamoji/ui/dialog/SelectNote$NormalSharedDriveViewHolder;

    invoke-direct {v0, v3}, Lcom/metamoji/ui/dialog/SelectNote$NormalSharedDriveViewHolder;-><init>(Lcom/metamoji/ui/dialog/SelectNote-IA;)V

    .line 871
    sget v1, Lcom/metamoji/noteanytime/R$id;->thumbnail:I

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/metamoji/ui/dialog/SelectNote$NormalSharedDriveViewHolder;->_thumbnail:Landroid/widget/ImageView;

    .line 872
    sget v1, Lcom/metamoji/noteanytime/R$id;->mainText:I

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/metamoji/ui/dialog/SelectNote$NormalSharedDriveViewHolder;->_mainText:Landroid/widget/TextView;

    .line 873
    sget v1, Lcom/metamoji/noteanytime/R$id;->subText:I

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/metamoji/ui/dialog/SelectNote$NormalSharedDriveViewHolder;->_subText:Landroid/widget/TextView;

    .line 874
    invoke-static {p1}, Lcom/metamoji/ui/dialog/SelectNote$SelectNoteItem;->-$$Nest$fget_content(Lcom/metamoji/ui/dialog/SelectNote$SelectNoteItem;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/dvm/fw/bean/DvmDriveBean;

    .line 875
    invoke-virtual {v1}, Lcom/metamoji/dvm/fw/bean/DvmDriveBean;->isAdmin()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 876
    iget-object v1, v0, Lcom/metamoji/ui/dialog/SelectNote$NormalSharedDriveViewHolder;->_thumbnail:Landroid/widget/ImageView;

    sget v2, Lcom/metamoji/noteanytime/R$drawable;->design1_thumb_mydrive:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 878
    :cond_9
    iget-object v1, v0, Lcom/metamoji/ui/dialog/SelectNote$NormalSharedDriveViewHolder;->_thumbnail:Landroid/widget/ImageView;

    sget v2, Lcom/metamoji/noteanytime/R$drawable;->design1_thumb_drive:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 880
    :goto_3
    iget-object v1, v0, Lcom/metamoji/ui/dialog/SelectNote$NormalSharedDriveViewHolder;->_thumbnail:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/metamoji/ui/dialog/SelectNote$4;->this$0:Lcom/metamoji/ui/dialog/SelectNote;

    invoke-static {v2}, Lcom/metamoji/ui/dialog/SelectNote;->-$$Nest$fget_normalThumbOnTouchListner(Lcom/metamoji/ui/dialog/SelectNote;)Landroid/view/View$OnTouchListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto/16 :goto_1

    .line 884
    :cond_a
    sget-object v0, Lcom/metamoji/ui/dialog/SelectNote$NoteListItemType;->NoteListItemType_Share:Lcom/metamoji/ui/dialog/SelectNote$NoteListItemType;

    invoke-static {p1}, Lcom/metamoji/ui/dialog/SelectNote$SelectNoteItem;->-$$Nest$fget_type(Lcom/metamoji/ui/dialog/SelectNote$SelectNoteItem;)Lcom/metamoji/ui/dialog/SelectNote$NoteListItemType;

    move-result-object v1

    if-ne v0, v1, :cond_b

    .line 885
    iget-object v0, p0, Lcom/metamoji/ui/dialog/SelectNote$4;->this$0:Lcom/metamoji/ui/dialog/SelectNote;

    invoke-virtual {v0}, Lcom/metamoji/ui/dialog/SelectNote;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/metamoji/noteanytime/R$layout;->item_cabinet_normal_folder:I

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 886
    new-instance v0, Lcom/metamoji/ui/dialog/SelectNote$NormalShareViewHolder;

    invoke-direct {v0, v3}, Lcom/metamoji/ui/dialog/SelectNote$NormalShareViewHolder;-><init>(Lcom/metamoji/ui/dialog/SelectNote-IA;)V

    .line 887
    sget v1, Lcom/metamoji/noteanytime/R$id;->thumbnail:I

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/metamoji/ui/dialog/SelectNote$NormalShareViewHolder;->_thumbnail:Landroid/widget/ImageView;

    .line 888
    sget v1, Lcom/metamoji/noteanytime/R$id;->mainText:I

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/metamoji/ui/dialog/SelectNote$NormalShareViewHolder;->_mainText:Landroid/widget/TextView;

    .line 889
    sget v1, Lcom/metamoji/noteanytime/R$id;->subText:I

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/metamoji/ui/dialog/SelectNote$NormalShareViewHolder;->_subText:Landroid/widget/TextView;

    .line 890
    iget-object v1, v0, Lcom/metamoji/ui/dialog/SelectNote$NormalShareViewHolder;->_thumbnail:Landroid/widget/ImageView;

    sget v2, Lcom/metamoji/noteanytime/R$drawable;->design1_thumb_driveall:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 891
    iget-object v1, v0, Lcom/metamoji/ui/dialog/SelectNote$NormalShareViewHolder;->_thumbnail:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/metamoji/ui/dialog/SelectNote$4;->this$0:Lcom/metamoji/ui/dialog/SelectNote;

    invoke-static {v2}, Lcom/metamoji/ui/dialog/SelectNote;->-$$Nest$fget_normalThumbOnTouchListner(Lcom/metamoji/ui/dialog/SelectNote;)Landroid/view/View$OnTouchListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto/16 :goto_1

    :cond_b
    move-object p3, v3

    :goto_4
    if-eqz v3, :cond_c

    .line 897
    invoke-virtual {v3, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object p2, v3

    .line 906
    :cond_c
    :goto_5
    iget-object v0, p3, Lcom/metamoji/ui/dialog/SelectNote$NormalViewHolder;->_thumbnail:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 912
    iget-object v0, p0, Lcom/metamoji/ui/dialog/SelectNote$4;->this$0:Lcom/metamoji/ui/dialog/SelectNote;

    invoke-static {v0, p1}, Lcom/metamoji/ui/dialog/SelectNote;->-$$Nest$mgetTitleString(Lcom/metamoji/ui/dialog/SelectNote;Lcom/metamoji/ui/dialog/SelectNote$SelectNoteItem;)Ljava/lang/String;

    move-result-object v0

    .line 913
    iget-object v1, p3, Lcom/metamoji/ui/dialog/SelectNote$NormalViewHolder;->_mainText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 915
    sget-object v0, Lcom/metamoji/ui/dialog/SelectNote$NoteListItemType;->NoteListItemType_Note:Lcom/metamoji/ui/dialog/SelectNote$NoteListItemType;

    invoke-static {p1}, Lcom/metamoji/ui/dialog/SelectNote$SelectNoteItem;->-$$Nest$fget_type(Lcom/metamoji/ui/dialog/SelectNote$SelectNoteItem;)Lcom/metamoji/ui/dialog/SelectNote$NoteListItemType;

    move-result-object v1

    if-ne v0, v1, :cond_d

    .line 917
    iget-object v0, p0, Lcom/metamoji/ui/dialog/SelectNote$4;->this$0:Lcom/metamoji/ui/dialog/SelectNote;

    iget-object p3, p3, Lcom/metamoji/ui/dialog/SelectNote$NormalViewHolder;->_thumbnail:Landroid/widget/ImageView;

    invoke-static {v0, p1, p3}, Lcom/metamoji/ui/dialog/SelectNote;->-$$Nest$msetThumbnailImage(Lcom/metamoji/ui/dialog/SelectNote;Lcom/metamoji/ui/dialog/SelectNote$SelectNoteItem;Landroid/widget/ImageView;)V

    :cond_d
    return-object p2

    .line 795
    :cond_e
    :goto_6
    new-instance p1, Landroid/view/View;

    iget-object p2, p0, Lcom/metamoji/ui/dialog/SelectNote$4;->this$0:Lcom/metamoji/ui/dialog/SelectNote;

    invoke-virtual {p2}, Lcom/metamoji/ui/dialog/SelectNote;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-object p1
.end method
