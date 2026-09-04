.class Lcom/metamoji/ui/library/item/NoteTemplateSelector$3;
.super Lcom/metamoji/ui/library/item/NoteTemplateSelectorAdapter;
.source "NoteTemplateSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/library/item/NoteTemplateSelector;->prepareNormalView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/library/item/NoteTemplateSelector;

.field final synthetic val$thumbTaskMap:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/library/item/NoteTemplateSelector;Landroid/content/Context;Ljava/util/List;Ljava/util/List;Ljava/util/concurrent/ConcurrentHashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 361
    iput-object p1, p0, Lcom/metamoji/ui/library/item/NoteTemplateSelector$3;->this$0:Lcom/metamoji/ui/library/item/NoteTemplateSelector;

    iput-object p5, p0, Lcom/metamoji/ui/library/item/NoteTemplateSelector$3;->val$thumbTaskMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0, p2, p3, p4}, Lcom/metamoji/ui/library/item/NoteTemplateSelectorAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 365
    iget-object v1, p0, Lcom/metamoji/ui/library/item/NoteTemplateSelector$3;->val$thumbTaskMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Future;

    if-eqz v1, :cond_0

    .line 367
    invoke-interface {v1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_0
    if-ltz p1, :cond_3

    .line 370
    iget-object v1, p0, Lcom/metamoji/ui/library/item/NoteTemplateSelector$3;->this$0:Lcom/metamoji/ui/library/item/NoteTemplateSelector;

    invoke-static {v1}, Lcom/metamoji/ui/library/item/NoteTemplateSelector;->-$$Nest$fget_itemList(Lcom/metamoji/ui/library/item/NoteTemplateSelector;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gt v1, p1, :cond_1

    goto/16 :goto_1

    .line 374
    :cond_1
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/library/item/NoteTemplateSelector$3;->getItem(I)Lcom/metamoji/ui/library/item/NoteTemplateSelector$SelectNoteItem;

    move-result-object p1

    if-nez p2, :cond_2

    .line 378
    iget-object p2, p0, Lcom/metamoji/ui/library/item/NoteTemplateSelector$3;->this$0:Lcom/metamoji/ui/library/item/NoteTemplateSelector;

    invoke-static {p2}, Lcom/metamoji/ui/library/item/NoteTemplateSelector;->-$$Nest$mgetActivity(Lcom/metamoji/ui/library/item/NoteTemplateSelector;)Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    .line 379
    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    sget v1, Lcom/metamoji/noteanytime/R$layout;->item_notetemplateselector_doc:I

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 380
    new-instance p3, Lcom/metamoji/ui/library/item/NoteTemplateSelector$NormalDocumentViewHolder;

    const/4 v0, 0x0

    invoke-direct {p3, v0}, Lcom/metamoji/ui/library/item/NoteTemplateSelector$NormalDocumentViewHolder;-><init>(Lcom/metamoji/ui/library/item/NoteTemplateSelector-IA;)V

    .line 381
    sget v0, Lcom/metamoji/noteanytime/R$id;->thumbnail:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p3, Lcom/metamoji/ui/library/item/NoteTemplateSelector$NormalDocumentViewHolder;->_thumbnail:Landroid/widget/ImageView;

    .line 382
    sget v0, Lcom/metamoji/noteanytime/R$id;->mainText:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/metamoji/ui/library/item/NoteTemplateSelector$NormalDocumentViewHolder;->_mainText:Landroid/widget/TextView;

    .line 383
    sget v0, Lcom/metamoji/noteanytime/R$id;->cabinetnotetemplateicon:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p3, Lcom/metamoji/ui/library/item/NoteTemplateSelector$NormalDocumentViewHolder;->_templateIcon:Landroid/widget/ImageView;

    .line 384
    sget v0, Lcom/metamoji/noteanytime/R$id;->cabinetshareicon:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p3, Lcom/metamoji/ui/library/item/NoteTemplateSelector$NormalDocumentViewHolder;->_shareIcon:Landroid/widget/ImageView;

    .line 386
    iget-object v0, p0, Lcom/metamoji/ui/library/item/NoteTemplateSelector$3;->this$0:Lcom/metamoji/ui/library/item/NoteTemplateSelector;

    iget-object v1, p3, Lcom/metamoji/ui/library/item/NoteTemplateSelector$NormalDocumentViewHolder;->_templateIcon:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/metamoji/ui/library/item/NoteTemplateSelector$SelectNoteItem;->isTemplate()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/metamoji/ui/library/item/NoteTemplateSelector;->-$$Nest$msetTemplateIconVisibility(Lcom/metamoji/ui/library/item/NoteTemplateSelector;Landroid/widget/ImageView;Z)V

    .line 388
    iget-object v0, p0, Lcom/metamoji/ui/library/item/NoteTemplateSelector$3;->this$0:Lcom/metamoji/ui/library/item/NoteTemplateSelector;

    iget-object v1, p3, Lcom/metamoji/ui/library/item/NoteTemplateSelector$NormalDocumentViewHolder;->_shareIcon:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/metamoji/ui/library/item/NoteTemplateSelector$SelectNoteItem;->isShareTemplate()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/metamoji/ui/library/item/NoteTemplateSelector;->-$$Nest$msetShareIconVisibility(Lcom/metamoji/ui/library/item/NoteTemplateSelector;Landroid/widget/ImageView;Z)V

    .line 391
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 395
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/metamoji/ui/library/item/NoteTemplateSelector$NormalViewHolder;

    .line 399
    :goto_0
    iget-object v0, p3, Lcom/metamoji/ui/library/item/NoteTemplateSelector$NormalViewHolder;->_thumbnail:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 402
    iget-object v0, p0, Lcom/metamoji/ui/library/item/NoteTemplateSelector$3;->this$0:Lcom/metamoji/ui/library/item/NoteTemplateSelector;

    invoke-static {v0, p1}, Lcom/metamoji/ui/library/item/NoteTemplateSelector;->-$$Nest$mgetTitleString(Lcom/metamoji/ui/library/item/NoteTemplateSelector;Lcom/metamoji/ui/library/item/NoteTemplateSelector$SelectNoteItem;)Ljava/lang/String;

    move-result-object v0

    .line 403
    iget-object v1, p3, Lcom/metamoji/ui/library/item/NoteTemplateSelector$NormalViewHolder;->_mainText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 405
    iget-object v0, p0, Lcom/metamoji/ui/library/item/NoteTemplateSelector$3;->this$0:Lcom/metamoji/ui/library/item/NoteTemplateSelector;

    iget-object p3, p3, Lcom/metamoji/ui/library/item/NoteTemplateSelector$NormalViewHolder;->_thumbnail:Landroid/widget/ImageView;

    invoke-static {v0, p1, p3, p2}, Lcom/metamoji/ui/library/item/NoteTemplateSelector;->-$$Nest$msetThumbnailImage(Lcom/metamoji/ui/library/item/NoteTemplateSelector;Lcom/metamoji/ui/library/item/NoteTemplateSelector$SelectNoteItem;Landroid/widget/ImageView;Landroid/view/View;)V

    return-object p2

    .line 371
    :cond_3
    :goto_1
    new-instance p1, Landroid/view/View;

    iget-object p2, p0, Lcom/metamoji/ui/library/item/NoteTemplateSelector$3;->this$0:Lcom/metamoji/ui/library/item/NoteTemplateSelector;

    invoke-static {p2}, Lcom/metamoji/ui/library/item/NoteTemplateSelector;->-$$Nest$fget_activity(Lcom/metamoji/ui/library/item/NoteTemplateSelector;)Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-object p1
.end method
