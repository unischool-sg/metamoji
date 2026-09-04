.class Lcom/metamoji/forSchool/ui/ScSelectNote$4;
.super Landroid/widget/ArrayAdapter;
.source "ScSelectNote.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/forSchool/ui/ScSelectNote;->prepareNormalView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/forSchool/ui/ScSelectNote;


# direct methods
.method constructor <init>(Lcom/metamoji/forSchool/ui/ScSelectNote;Landroid/content/Context;ILjava/util/List;)V
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

    .line 930
    iput-object p1, p0, Lcom/metamoji/forSchool/ui/ScSelectNote$4;->this$0:Lcom/metamoji/forSchool/ui/ScSelectNote;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    if-ltz p1, :cond_1d

    .line 933
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScSelectNote$4;->this$0:Lcom/metamoji/forSchool/ui/ScSelectNote;

    invoke-static {v0}, Lcom/metamoji/forSchool/ui/ScSelectNote;->-$$Nest$fget_itemList(Lcom/metamoji/forSchool/ui/ScSelectNote;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, p1, :cond_0

    goto/16 :goto_a

    .line 937
    :cond_0
    invoke-virtual {p0, p1}, Lcom/metamoji/forSchool/ui/ScSelectNote$4;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    .line 939
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/forSchool/ui/ScSelectNote$NormalViewHolder;

    invoke-virtual {v1}, Lcom/metamoji/forSchool/ui/ScSelectNote$NormalViewHolder;->getType()Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;

    move-result-object v1

    invoke-static {p1}, Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;->-$$Nest$fget_type(Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;)Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 1052
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/metamoji/forSchool/ui/ScSelectNote$NormalViewHolder;

    goto/16 :goto_5

    .line 942
    :cond_2
    :goto_0
    sget-object v1, Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;->NoteListItemType_Folder:Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;

    invoke-static {p1}, Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;->-$$Nest$fget_type(Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;)Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;

    move-result-object v2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_3

    .line 943
    iget-object v1, p0, Lcom/metamoji/forSchool/ui/ScSelectNote$4;->this$0:Lcom/metamoji/forSchool/ui/ScSelectNote;

    invoke-virtual {v1}, Lcom/metamoji/forSchool/ui/ScSelectNote;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/metamoji/noteanytime/R$layout;->item_cabinet_normal_folder:I

    invoke-virtual {v1, v2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 944
    new-instance v1, Lcom/metamoji/forSchool/ui/ScSelectNote$NormalFolderViewHolder;

    invoke-direct {v1, v3}, Lcom/metamoji/forSchool/ui/ScSelectNote$NormalFolderViewHolder;-><init>(Lcom/metamoji/forSchool/ui/ScSelectNote-IA;)V

    .line 945
    sget v2, Lcom/metamoji/noteanytime/R$id;->thumbnail:I

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/metamoji/forSchool/ui/ScSelectNote$NormalFolderViewHolder;->_thumbnail:Landroid/widget/ImageView;

    .line 946
    sget v2, Lcom/metamoji/noteanytime/R$id;->mainText:I

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/metamoji/forSchool/ui/ScSelectNote$NormalFolderViewHolder;->_mainText:Landroid/widget/TextView;

    .line 947
    sget v2, Lcom/metamoji/noteanytime/R$id;->subText:I

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/metamoji/forSchool/ui/ScSelectNote$NormalFolderViewHolder;->_subText:Landroid/widget/TextView;

    .line 949
    iget-object v2, v1, Lcom/metamoji/forSchool/ui/ScSelectNote$NormalFolderViewHolder;->_thumbnail:Landroid/widget/ImageView;

    sget v3, Lcom/metamoji/noteanytime/R$drawable;->cabinet_thumb_folder:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 950
    iget-object v2, v1, Lcom/metamoji/forSchool/ui/ScSelectNote$NormalFolderViewHolder;->_thumbnail:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/metamoji/forSchool/ui/ScSelectNote$4;->this$0:Lcom/metamoji/forSchool/ui/ScSelectNote;

    invoke-static {v3}, Lcom/metamoji/forSchool/ui/ScSelectNote;->-$$Nest$fget_normalThumbOnTouchListner(Lcom/metamoji/forSchool/ui/ScSelectNote;)Landroid/view/View$OnTouchListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :goto_1
    move-object v3, p3

    move-object p3, v1

    goto/16 :goto_4

    .line 954
    :cond_3
    sget-object v1, Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;->NoteListItemType_Note:Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;

    invoke-static {p1}, Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;->-$$Nest$fget_type(Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;)Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;

    move-result-object v2

    if-ne v1, v2, :cond_4

    .line 955
    iget-object v1, p0, Lcom/metamoji/forSchool/ui/ScSelectNote$4;->this$0:Lcom/metamoji/forSchool/ui/ScSelectNote;

    invoke-virtual {v1}, Lcom/metamoji/forSchool/ui/ScSelectNote;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/metamoji/noteanytime/R$layout;->item_cabinet_normal_doc:I

    invoke-virtual {v1, v2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 956
    new-instance v1, Lcom/metamoji/forSchool/ui/ScSelectNote$NormalDocumentViewHolder;

    invoke-direct {v1, v3}, Lcom/metamoji/forSchool/ui/ScSelectNote$NormalDocumentViewHolder;-><init>(Lcom/metamoji/forSchool/ui/ScSelectNote-IA;)V

    .line 957
    sget v2, Lcom/metamoji/noteanytime/R$id;->thumbnail:I

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/metamoji/forSchool/ui/ScSelectNote$NormalDocumentViewHolder;->_thumbnail:Landroid/widget/ImageView;

    .line 958
    sget v2, Lcom/metamoji/noteanytime/R$id;->mainText:I

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/metamoji/forSchool/ui/ScSelectNote$NormalDocumentViewHolder;->_mainText:Landroid/widget/TextView;

    .line 959
    sget v2, Lcom/metamoji/noteanytime/R$id;->subText:I

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/metamoji/forSchool/ui/ScSelectNote$NormalDocumentViewHolder;->_subText:Landroid/widget/TextView;

    .line 960
    sget v2, Lcom/metamoji/noteanytime/R$id;->cabinetnotetemplateicon:I

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/metamoji/forSchool/ui/ScSelectNote$NormalDocumentViewHolder;->_templateIcon:Landroid/widget/ImageView;

    .line 961
    sget v2, Lcom/metamoji/noteanytime/R$id;->cabinetshareicon:I

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/metamoji/forSchool/ui/ScSelectNote$NormalDocumentViewHolder;->_shareIcon:Landroid/widget/ImageView;

    .line 962
    iget-object v2, v1, Lcom/metamoji/forSchool/ui/ScSelectNote$NormalDocumentViewHolder;->_thumbnail:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/metamoji/forSchool/ui/ScSelectNote$4;->this$0:Lcom/metamoji/forSchool/ui/ScSelectNote;

    invoke-static {v3}, Lcom/metamoji/forSchool/ui/ScSelectNote;->-$$Nest$fget_normalThumbOnTouchListner(Lcom/metamoji/forSchool/ui/ScSelectNote;)Landroid/view/View$OnTouchListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_1

    .line 965
    :cond_4
    sget-object v1, Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;->NoteListItemType_Back:Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;

    invoke-static {p1}, Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;->-$$Nest$fget_type(Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;)Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;

    move-result-object v2

    if-ne v1, v2, :cond_5

    .line 966
    iget-object v1, p0, Lcom/metamoji/forSchool/ui/ScSelectNote$4;->this$0:Lcom/metamoji/forSchool/ui/ScSelectNote;

    invoke-virtual {v1}, Lcom/metamoji/forSchool/ui/ScSelectNote;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/metamoji/noteanytime/R$layout;->item_cabinet_normal_folder:I

    invoke-virtual {v1, v2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 967
    new-instance v1, Lcom/metamoji/forSchool/ui/ScSelectNote$NormalFolderBackViewHolder;

    invoke-direct {v1, v3}, Lcom/metamoji/forSchool/ui/ScSelectNote$NormalFolderBackViewHolder;-><init>(Lcom/metamoji/forSchool/ui/ScSelectNote-IA;)V

    .line 968
    sget v2, Lcom/metamoji/noteanytime/R$id;->thumbnail:I

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/metamoji/forSchool/ui/ScSelectNote$NormalFolderBackViewHolder;->_thumbnail:Landroid/widget/ImageView;

    .line 969
    sget v2, Lcom/metamoji/noteanytime/R$id;->mainText:I

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/metamoji/forSchool/ui/ScSelectNote$NormalFolderBackViewHolder;->_mainText:Landroid/widget/TextView;

    .line 970
    sget v2, Lcom/metamoji/noteanytime/R$id;->subText:I

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/metamoji/forSchool/ui/ScSelectNote$NormalFolderBackViewHolder;->_subText:Landroid/widget/TextView;

    .line 972
    iget-object v2, v1, Lcom/metamoji/forSchool/ui/ScSelectNote$NormalFolderBackViewHolder;->_thumbnail:Landroid/widget/ImageView;

    sget v3, Lcom/metamoji/noteanytime/R$drawable;->cabinet_thumb_folderback:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 973
    iget-object v2, v1, Lcom/metamoji/forSchool/ui/ScSelectNote$NormalFolderBackViewHolder;->_thumbnail:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/metamoji/forSchool/ui/ScSelectNote$4;->this$0:Lcom/metamoji/forSchool/ui/ScSelectNote;

    invoke-static {v3}, Lcom/metamoji/forSchool/ui/ScSelectNote;->-$$Nest$fget_normalThumbOnTouchListner(Lcom/metamoji/forSchool/ui/ScSelectNote;)Landroid/view/View$OnTouchListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto/16 :goto_1

    .line 977
    :cond_5
    sget-object v1, Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;->NoteListItemType_LocalDrive:Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;

    invoke-static {p1}, Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;->-$$Nest$fget_type(Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;)Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;

    move-result-object v2

    if-ne v1, v2, :cond_6

    .line 978
    iget-object v1, p0, Lcom/metamoji/forSchool/ui/ScSelectNote$4;->this$0:Lcom/metamoji/forSchool/ui/ScSelectNote;

    invoke-virtual {v1}, Lcom/metamoji/forSchool/ui/ScSelectNote;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/metamoji/noteanytime/R$layout;->item_cabinet_normal_folder:I

    invoke-virtual {v1, v2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 979
    new-instance v1, Lcom/metamoji/forSchool/ui/ScSelectNote$NormalLocalRootViewHolder;

    invoke-direct {v1, v3}, Lcom/metamoji/forSchool/ui/ScSelectNote$NormalLocalRootViewHolder;-><init>(Lcom/metamoji/forSchool/ui/ScSelectNote-IA;)V

    .line 980
    sget v2, Lcom/metamoji/noteanytime/R$id;->thumbnail:I

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/metamoji/forSchool/ui/ScSelectNote$NormalLocalRootViewHolder;->_thumbnail:Landroid/widget/ImageView;

    .line 981
    sget v2, Lcom/metamoji/noteanytime/R$id;->mainText:I

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/metamoji/forSchool/ui/ScSelectNote$NormalLocalRootViewHolder;->_mainText:Landroid/widget/TextView;

    .line 982
    sget v2, Lcom/metamoji/noteanytime/R$id;->subText:I

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/metamoji/forSchool/ui/ScSelectNote$NormalLocalRootViewHolder;->_subText:Landroid/widget/TextView;

    .line 983
    iget-object v2, v1, Lcom/metamoji/forSchool/ui/ScSelectNote$NormalLocalRootViewHolder;->_thumbnail:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/metamoji/forSchool/ui/ScSelectNote$4;->this$0:Lcom/metamoji/forSchool/ui/ScSelectNote;

    invoke-static {v3}, Lcom/metamoji/forSchool/ui/ScSelectNote;->-$$Nest$fget_normalThumbOnTouchListner(Lcom/metamoji/forSchool/ui/ScSelectNote;)Landroid/view/View$OnTouchListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto/16 :goto_1

    .line 988
    :cond_6
    sget-object v1, Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;->NoteListItemType_Template:Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;

    invoke-static {p1}, Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;->-$$Nest$fget_type(Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;)Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;

    move-result-object v2

    if-ne v1, v2, :cond_7

    .line 989
    iget-object v1, p0, Lcom/metamoji/forSchool/ui/ScSelectNote$4;->this$0:Lcom/metamoji/forSchool/ui/ScSelectNote;

    invoke-virtual {v1}, Lcom/metamoji/forSchool/ui/ScSelectNote;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/metamoji/noteanytime/R$layout;->item_cabinet_normal_folder:I

    invoke-virtual {v1, v2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 990
    new-instance v1, Lcom/metamoji/forSchool/ui/ScSelectNote$NormalTemplateViewHolder;

    invoke-direct {v1, v3}, Lcom/metamoji/forSchool/ui/ScSelectNote$NormalTemplateViewHolder;-><init>(Lcom/metamoji/forSchool/ui/ScSelectNote-IA;)V

    .line 991
    sget v2, Lcom/metamoji/noteanytime/R$id;->thumbnail:I

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/metamoji/forSchool/ui/ScSelectNote$NormalTemplateViewHolder;->_thumbnail:Landroid/widget/ImageView;

    .line 992
    sget v2, Lcom/metamoji/noteanytime/R$id;->mainText:I

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/metamoji/forSchool/ui/ScSelectNote$NormalTemplateViewHolder;->_mainText:Landroid/widget/TextView;

    .line 993
    sget v2, Lcom/metamoji/noteanytime/R$id;->subText:I

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/metamoji/forSchool/ui/ScSelectNote$NormalTemplateViewHolder;->_subText:Landroid/widget/TextView;

    .line 995
    iget-object v2, v1, Lcom/metamoji/forSchool/ui/ScSelectNote$NormalTemplateViewHolder;->_thumbnail:Landroid/widget/ImageView;

    sget v3, Lcom/metamoji/noteanytime/R$drawable;->cabinet_thumb_templatenote:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 996
    iget-object v2, v1, Lcom/metamoji/forSchool/ui/ScSelectNote$NormalTemplateViewHolder;->_thumbnail:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/metamoji/forSchool/ui/ScSelectNote$4;->this$0:Lcom/metamoji/forSchool/ui/ScSelectNote;

    invoke-static {v3}, Lcom/metamoji/forSchool/ui/ScSelectNote;->-$$Nest$fget_normalThumbOnTouchListner(Lcom/metamoji/forSchool/ui/ScSelectNote;)Landroid/view/View$OnTouchListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto/16 :goto_1

    .line 1001
    :cond_7
    sget-object v1, Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;->NoteListItemType_SharedDrive:Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;

    invoke-static {p1}, Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;->-$$Nest$fget_type(Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;)Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;

    move-result-object v2

    if-eq v1, v2, :cond_d

    sget-object v1, Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;->NoteListItemType_CRBoxClass:Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;

    invoke-static {p1}, Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;->-$$Nest$fget_type(Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;)Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;

    move-result-object v2

    if-ne v1, v2, :cond_8

    goto/16 :goto_3

    .line 1012
    :cond_8
    sget-object v1, Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;->NoteListItemType_Share:Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;

    invoke-static {p1}, Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;->-$$Nest$fget_type(Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;)Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;

    move-result-object v2

    if-ne v1, v2, :cond_9

    .line 1013
    iget-object v1, p0, Lcom/metamoji/forSchool/ui/ScSelectNote$4;->this$0:Lcom/metamoji/forSchool/ui/ScSelectNote;

    invoke-virtual {v1}, Lcom/metamoji/forSchool/ui/ScSelectNote;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/metamoji/noteanytime/R$layout;->item_cabinet_normal_folder:I

    invoke-virtual {v1, v2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 1014
    new-instance v1, Lcom/metamoji/forSchool/ui/ScSelectNote$NormalShareViewHolder;

    invoke-direct {v1, v3}, Lcom/metamoji/forSchool/ui/ScSelectNote$NormalShareViewHolder;-><init>(Lcom/metamoji/forSchool/ui/ScSelectNote-IA;)V

    .line 1015
    sget v2, Lcom/metamoji/noteanytime/R$id;->thumbnail:I

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/metamoji/forSchool/ui/ScSelectNote$NormalShareViewHolder;->_thumbnail:Landroid/widget/ImageView;

    .line 1016
    sget v2, Lcom/metamoji/noteanytime/R$id;->mainText:I

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/metamoji/forSchool/ui/ScSelectNote$NormalShareViewHolder;->_mainText:Landroid/widget/TextView;

    .line 1017
    sget v2, Lcom/metamoji/noteanytime/R$id;->subText:I

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/metamoji/forSchool/ui/ScSelectNote$NormalShareViewHolder;->_subText:Landroid/widget/TextView;

    .line 1018
    iget-object v2, v1, Lcom/metamoji/forSchool/ui/ScSelectNote$NormalShareViewHolder;->_thumbnail:Landroid/widget/ImageView;

    sget v3, Lcom/metamoji/noteanytime/R$drawable;->design1_thumb_driveall:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1019
    iget-object v2, v1, Lcom/metamoji/forSchool/ui/ScSelectNote$NormalShareViewHolder;->_thumbnail:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/metamoji/forSchool/ui/ScSelectNote$4;->this$0:Lcom/metamoji/forSchool/ui/ScSelectNote;

    invoke-static {v3}, Lcom/metamoji/forSchool/ui/ScSelectNote;->-$$Nest$fget_normalThumbOnTouchListner(Lcom/metamoji/forSchool/ui/ScSelectNote;)Landroid/view/View$OnTouchListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto/16 :goto_1

    .line 1023
    :cond_9
    sget-object v1, Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;->NoteListItemType_CRBox:Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;

    invoke-static {p1}, Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;->-$$Nest$fget_type(Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;)Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;

    move-result-object v2

    if-eq v1, v2, :cond_c

    sget-object v1, Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;->NoteListItemType_CRBoxOld:Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;

    invoke-static {p1}, Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;->-$$Nest$fget_type(Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;)Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;

    move-result-object v2

    if-ne v1, v2, :cond_a

    goto :goto_2

    .line 1035
    :cond_a
    sget-object v1, Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;->NoteListItemType_CRBoxYear:Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;

    invoke-static {p1}, Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;->-$$Nest$fget_type(Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;)Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;

    move-result-object v2

    if-ne v1, v2, :cond_b

    .line 1036
    iget-object v1, p0, Lcom/metamoji/forSchool/ui/ScSelectNote$4;->this$0:Lcom/metamoji/forSchool/ui/ScSelectNote;

    invoke-virtual {v1}, Lcom/metamoji/forSchool/ui/ScSelectNote;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/metamoji/noteanytime/R$layout;->item_cabinet_normal_folder:I

    invoke-virtual {v1, v2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 1037
    new-instance v1, Lcom/metamoji/forSchool/ui/ScSelectNote$NormalShareViewHolder;

    invoke-direct {v1, v3}, Lcom/metamoji/forSchool/ui/ScSelectNote$NormalShareViewHolder;-><init>(Lcom/metamoji/forSchool/ui/ScSelectNote-IA;)V

    .line 1038
    sget v2, Lcom/metamoji/noteanytime/R$id;->thumbnail:I

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/metamoji/forSchool/ui/ScSelectNote$NormalShareViewHolder;->_thumbnail:Landroid/widget/ImageView;

    .line 1039
    sget v2, Lcom/metamoji/noteanytime/R$id;->mainText:I

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/metamoji/forSchool/ui/ScSelectNote$NormalShareViewHolder;->_mainText:Landroid/widget/TextView;

    .line 1040
    sget v2, Lcom/metamoji/noteanytime/R$id;->subText:I

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/metamoji/forSchool/ui/ScSelectNote$NormalShareViewHolder;->_subText:Landroid/widget/TextView;

    .line 1041
    iget-object v2, v1, Lcom/metamoji/forSchool/ui/ScSelectNote$NormalShareViewHolder;->_thumbnail:Landroid/widget/ImageView;

    sget v3, Lcom/metamoji/noteanytime/R$drawable;->design1_thumb_driveall:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1042
    iget-object v2, v1, Lcom/metamoji/forSchool/ui/ScSelectNote$NormalShareViewHolder;->_thumbnail:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/metamoji/forSchool/ui/ScSelectNote$4;->this$0:Lcom/metamoji/forSchool/ui/ScSelectNote;

    invoke-static {v3}, Lcom/metamoji/forSchool/ui/ScSelectNote;->-$$Nest$fget_normalThumbOnTouchListner(Lcom/metamoji/forSchool/ui/ScSelectNote;)Landroid/view/View$OnTouchListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto/16 :goto_1

    :cond_b
    move-object p3, v3

    goto/16 :goto_4

    .line 1025
    :cond_c
    :goto_2
    iget-object v1, p0, Lcom/metamoji/forSchool/ui/ScSelectNote$4;->this$0:Lcom/metamoji/forSchool/ui/ScSelectNote;

    invoke-virtual {v1}, Lcom/metamoji/forSchool/ui/ScSelectNote;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/metamoji/noteanytime/R$layout;->item_cabinet_normal_folder:I

    invoke-virtual {v1, v2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 1026
    new-instance v1, Lcom/metamoji/forSchool/ui/ScSelectNote$NormalShareViewHolder;

    invoke-direct {v1, v3}, Lcom/metamoji/forSchool/ui/ScSelectNote$NormalShareViewHolder;-><init>(Lcom/metamoji/forSchool/ui/ScSelectNote-IA;)V

    .line 1027
    sget v2, Lcom/metamoji/noteanytime/R$id;->thumbnail:I

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/metamoji/forSchool/ui/ScSelectNote$NormalShareViewHolder;->_thumbnail:Landroid/widget/ImageView;

    .line 1028
    sget v2, Lcom/metamoji/noteanytime/R$id;->mainText:I

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/metamoji/forSchool/ui/ScSelectNote$NormalShareViewHolder;->_mainText:Landroid/widget/TextView;

    .line 1029
    sget v2, Lcom/metamoji/noteanytime/R$id;->subText:I

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/metamoji/forSchool/ui/ScSelectNote$NormalShareViewHolder;->_subText:Landroid/widget/TextView;

    .line 1030
    iget-object v2, v1, Lcom/metamoji/forSchool/ui/ScSelectNote$NormalShareViewHolder;->_thumbnail:Landroid/widget/ImageView;

    sget v3, Lcom/metamoji/noteanytime/R$drawable;->design1_thumb_driveall:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1031
    iget-object v2, v1, Lcom/metamoji/forSchool/ui/ScSelectNote$NormalShareViewHolder;->_thumbnail:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/metamoji/forSchool/ui/ScSelectNote$4;->this$0:Lcom/metamoji/forSchool/ui/ScSelectNote;

    invoke-static {v3}, Lcom/metamoji/forSchool/ui/ScSelectNote;->-$$Nest$fget_normalThumbOnTouchListner(Lcom/metamoji/forSchool/ui/ScSelectNote;)Landroid/view/View$OnTouchListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto/16 :goto_1

    .line 1003
    :cond_d
    :goto_3
    iget-object v1, p0, Lcom/metamoji/forSchool/ui/ScSelectNote$4;->this$0:Lcom/metamoji/forSchool/ui/ScSelectNote;

    invoke-virtual {v1}, Lcom/metamoji/forSchool/ui/ScSelectNote;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/metamoji/noteanytime/R$layout;->item_cabinet_normal_folder:I

    invoke-virtual {v1, v2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 1004
    new-instance v1, Lcom/metamoji/forSchool/ui/ScSelectNote$NormalSharedDriveViewHolder;

    invoke-direct {v1, v3}, Lcom/metamoji/forSchool/ui/ScSelectNote$NormalSharedDriveViewHolder;-><init>(Lcom/metamoji/forSchool/ui/ScSelectNote-IA;)V

    .line 1005
    sget v2, Lcom/metamoji/noteanytime/R$id;->thumbnail:I

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/metamoji/forSchool/ui/ScSelectNote$NormalSharedDriveViewHolder;->_thumbnail:Landroid/widget/ImageView;

    .line 1006
    sget v2, Lcom/metamoji/noteanytime/R$id;->mainText:I

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/metamoji/forSchool/ui/ScSelectNote$NormalSharedDriveViewHolder;->_mainText:Landroid/widget/TextView;

    .line 1007
    sget v2, Lcom/metamoji/noteanytime/R$id;->subText:I

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/metamoji/forSchool/ui/ScSelectNote$NormalSharedDriveViewHolder;->_subText:Landroid/widget/TextView;

    .line 1008
    iget-object v2, v1, Lcom/metamoji/forSchool/ui/ScSelectNote$NormalSharedDriveViewHolder;->_thumbnail:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/metamoji/forSchool/ui/ScSelectNote$4;->this$0:Lcom/metamoji/forSchool/ui/ScSelectNote;

    invoke-static {v3}, Lcom/metamoji/forSchool/ui/ScSelectNote;->-$$Nest$fget_normalThumbOnTouchListner(Lcom/metamoji/forSchool/ui/ScSelectNote;)Landroid/view/View$OnTouchListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto/16 :goto_1

    :goto_4
    if-eqz v3, :cond_e

    .line 1048
    invoke-virtual {v3, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object p2, v3

    .line 1055
    :cond_e
    :goto_5
    sget-object v1, Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;->NoteListItemType_Folder:Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;

    invoke-static {p1}, Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;->-$$Nest$fget_type(Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;)Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;

    move-result-object v2

    if-ne v1, v2, :cond_f

    goto/16 :goto_9

    .line 1056
    :cond_f
    sget-object v1, Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;->NoteListItemType_Note:Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;

    invoke-static {p1}, Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;->-$$Nest$fget_type(Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;)Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;

    move-result-object v2

    if-ne v1, v2, :cond_11

    .line 1057
    move-object v1, p3

    check-cast v1, Lcom/metamoji/forSchool/ui/ScSelectNote$NormalDocumentViewHolder;

    .line 1058
    iget-object v2, p0, Lcom/metamoji/forSchool/ui/ScSelectNote$4;->this$0:Lcom/metamoji/forSchool/ui/ScSelectNote;

    iget-object v3, v1, Lcom/metamoji/forSchool/ui/ScSelectNote$NormalDocumentViewHolder;->_templateIcon:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/metamoji/forSchool/ui/ScSelectNote$4;->this$0:Lcom/metamoji/forSchool/ui/ScSelectNote;

    invoke-static {p1}, Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;->-$$Nest$fget_metadata(Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/metamoji/forSchool/ui/ScSelectNote;->-$$Nest$misTemplate(Lcom/metamoji/forSchool/ui/ScSelectNote;Ljava/lang/Object;)Z

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/metamoji/forSchool/ui/ScSelectNote;->-$$Nest$msetTemplateIconVisibility(Lcom/metamoji/forSchool/ui/ScSelectNote;Landroid/widget/ImageView;Z)V

    .line 1059
    iget-object v1, v1, Lcom/metamoji/forSchool/ui/ScSelectNote$NormalDocumentViewHolder;->_shareIcon:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/metamoji/forSchool/ui/ScSelectNote$4;->this$0:Lcom/metamoji/forSchool/ui/ScSelectNote;

    invoke-static {p1}, Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;->-$$Nest$fget_metadata(Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/metamoji/forSchool/ui/ScSelectNote;->-$$Nest$misShareTemplate(Lcom/metamoji/forSchool/ui/ScSelectNote;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    goto :goto_6

    :cond_10
    const/16 v0, 0x8

    :goto_6
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_9

    .line 1060
    :cond_11
    sget-object v0, Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;->NoteListItemType_Back:Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;

    invoke-static {p1}, Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;->-$$Nest$fget_type(Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;)Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;

    move-result-object v1

    if-ne v0, v1, :cond_12

    goto/16 :goto_9

    .line 1061
    :cond_12
    sget-object v0, Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;->NoteListItemType_LocalDrive:Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;

    invoke-static {p1}, Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;->-$$Nest$fget_type(Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;)Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;

    move-result-object v1

    if-ne v0, v1, :cond_13

    .line 1062
    move-object v0, p3

    check-cast v0, Lcom/metamoji/forSchool/ui/ScSelectNote$NormalLocalRootViewHolder;

    .line 1063
    iget-object v0, v0, Lcom/metamoji/forSchool/ui/ScSelectNote$NormalLocalRootViewHolder;->_thumbnail:Landroid/widget/ImageView;

    sget v1, Lcom/metamoji/noteanytime/R$drawable;->design1_thumb_mydrive:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_9

    .line 1064
    :cond_13
    sget-object v0, Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;->NoteListItemType_Template:Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;

    invoke-static {p1}, Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;->-$$Nest$fget_type(Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;)Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;

    move-result-object v1

    if-ne v0, v1, :cond_14

    goto :goto_9

    .line 1065
    :cond_14
    sget-object v0, Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;->NoteListItemType_SharedDrive:Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;

    invoke-static {p1}, Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;->-$$Nest$fget_type(Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;)Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;

    move-result-object v1

    if-eq v0, v1, :cond_19

    sget-object v0, Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;->NoteListItemType_CRBoxClass:Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;

    invoke-static {p1}, Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;->-$$Nest$fget_type(Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;)Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;

    move-result-object v1

    if-ne v0, v1, :cond_15

    goto :goto_8

    .line 1074
    :cond_15
    sget-object v0, Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;->NoteListItemType_Share:Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;

    invoke-static {p1}, Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;->-$$Nest$fget_type(Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;)Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;

    move-result-object v1

    if-ne v0, v1, :cond_16

    goto :goto_9

    .line 1075
    :cond_16
    sget-object v0, Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;->NoteListItemType_CRBox:Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;

    invoke-static {p1}, Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;->-$$Nest$fget_type(Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;)Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;

    move-result-object v1

    if-eq v0, v1, :cond_18

    sget-object v0, Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;->NoteListItemType_CRBoxOld:Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;

    invoke-static {p1}, Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;->-$$Nest$fget_type(Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;)Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;

    move-result-object v1

    if-ne v0, v1, :cond_17

    goto :goto_7

    .line 1082
    :cond_17
    sget-object v0, Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;->NoteListItemType_CRBoxYear:Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;

    invoke-static {p1}, Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;->-$$Nest$fget_type(Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;)Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;

    goto :goto_9

    .line 1077
    :cond_18
    :goto_7
    sget-object v0, Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;->NoteListItemType_CRBoxOld:Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;

    invoke-static {p1}, Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;->-$$Nest$fget_type(Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;)Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;

    move-result-object v1

    if-ne v0, v1, :cond_1b

    .line 1078
    move-object v0, p3

    check-cast v0, Lcom/metamoji/forSchool/ui/ScSelectNote$NormalShareViewHolder;

    .line 1079
    iget-object v0, v0, Lcom/metamoji/forSchool/ui/ScSelectNote$NormalShareViewHolder;->_thumbnail:Landroid/widget/ImageView;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_9

    .line 1067
    :cond_19
    :goto_8
    move-object v0, p3

    check-cast v0, Lcom/metamoji/forSchool/ui/ScSelectNote$NormalSharedDriveViewHolder;

    .line 1068
    invoke-static {p1}, Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;->-$$Nest$fget_content(Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/dvm/fw/bean/DvmDriveBean;

    .line 1069
    invoke-virtual {v1}, Lcom/metamoji/dvm/fw/bean/DvmDriveBean;->isAdmin()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 1070
    iget-object v0, v0, Lcom/metamoji/forSchool/ui/ScSelectNote$NormalSharedDriveViewHolder;->_thumbnail:Landroid/widget/ImageView;

    sget v1, Lcom/metamoji/noteanytime/R$drawable;->design1_thumb_mydrive:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_9

    .line 1072
    :cond_1a
    iget-object v0, v0, Lcom/metamoji/forSchool/ui/ScSelectNote$NormalSharedDriveViewHolder;->_thumbnail:Landroid/widget/ImageView;

    sget v1, Lcom/metamoji/noteanytime/R$drawable;->design1_thumb_drive:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1086
    :cond_1b
    :goto_9
    iget-object v0, p3, Lcom/metamoji/forSchool/ui/ScSelectNote$NormalViewHolder;->_thumbnail:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 1092
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScSelectNote$4;->this$0:Lcom/metamoji/forSchool/ui/ScSelectNote;

    invoke-static {v0, p1}, Lcom/metamoji/forSchool/ui/ScSelectNote;->-$$Nest$mgetTitleString(Lcom/metamoji/forSchool/ui/ScSelectNote;Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;)Ljava/lang/String;

    move-result-object v0

    .line 1093
    iget-object v1, p3, Lcom/metamoji/forSchool/ui/ScSelectNote$NormalViewHolder;->_mainText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1095
    sget-object v0, Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;->NoteListItemType_Note:Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;

    invoke-static {p1}, Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;->-$$Nest$fget_type(Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;)Lcom/metamoji/forSchool/ui/ScSelectNote$ScNoteListItemType;

    move-result-object v1

    if-ne v0, v1, :cond_1c

    .line 1097
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScSelectNote$4;->this$0:Lcom/metamoji/forSchool/ui/ScSelectNote;

    iget-object p3, p3, Lcom/metamoji/forSchool/ui/ScSelectNote$NormalViewHolder;->_thumbnail:Landroid/widget/ImageView;

    invoke-static {v0, p1, p3}, Lcom/metamoji/forSchool/ui/ScSelectNote;->-$$Nest$msetThumbnailImage(Lcom/metamoji/forSchool/ui/ScSelectNote;Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;Landroid/widget/ImageView;)V

    :cond_1c
    return-object p2

    .line 934
    :cond_1d
    :goto_a
    new-instance p1, Landroid/view/View;

    iget-object p2, p0, Lcom/metamoji/forSchool/ui/ScSelectNote$4;->this$0:Lcom/metamoji/forSchool/ui/ScSelectNote;

    invoke-virtual {p2}, Lcom/metamoji/forSchool/ui/ScSelectNote;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-object p1
.end method
