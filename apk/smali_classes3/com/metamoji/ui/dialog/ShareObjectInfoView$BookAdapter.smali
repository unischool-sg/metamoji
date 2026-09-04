.class Lcom/metamoji/ui/dialog/ShareObjectInfoView$BookAdapter;
.super Landroid/widget/BaseAdapter;
.source "ShareObjectInfoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/dialog/ShareObjectInfoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BookAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/dialog/ShareObjectInfoView;


# direct methods
.method private constructor <init>(Lcom/metamoji/ui/dialog/ShareObjectInfoView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 77
    iput-object p1, p0, Lcom/metamoji/ui/dialog/ShareObjectInfoView$BookAdapter;->this$0:Lcom/metamoji/ui/dialog/ShareObjectInfoView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/metamoji/ui/dialog/ShareObjectInfoView;Lcom/metamoji/ui/dialog/ShareObjectInfoView-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/ui/dialog/ShareObjectInfoView$BookAdapter;-><init>(Lcom/metamoji/ui/dialog/ShareObjectInfoView;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/metamoji/ui/dialog/ShareObjectInfoView$BookAdapter;->this$0:Lcom/metamoji/ui/dialog/ShareObjectInfoView;

    iget-object v0, v0, Lcom/metamoji/ui/dialog/ShareObjectInfoView;->names:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/metamoji/ui/dialog/ShareObjectInfoView$BookAdapter;->this$0:Lcom/metamoji/ui/dialog/ShareObjectInfoView;

    iget-object v0, v0, Lcom/metamoji/ui/dialog/ShareObjectInfoView;->names:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    if-nez p2, :cond_0

    .line 97
    iget-object p2, p0, Lcom/metamoji/ui/dialog/ShareObjectInfoView$BookAdapter;->this$0:Lcom/metamoji/ui/dialog/ShareObjectInfoView;

    invoke-virtual {p2}, Lcom/metamoji/ui/dialog/ShareObjectInfoView;->requireContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    .line 99
    sget p3, Lcom/metamoji/noteanytime/R$layout;->listviewitem_shareobjectitem:I

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 101
    :cond_0
    sget p3, Lcom/metamoji/noteanytime/R$id;->lvitem_textView1:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 102
    sget v0, Lcom/metamoji/noteanytime/R$id;->lvitem_textView2:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 104
    iget-object v1, p0, Lcom/metamoji/ui/dialog/ShareObjectInfoView$BookAdapter;->this$0:Lcom/metamoji/ui/dialog/ShareObjectInfoView;

    iget-object v1, v1, Lcom/metamoji/ui/dialog/ShareObjectInfoView;->names:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    iget-object p3, p0, Lcom/metamoji/ui/dialog/ShareObjectInfoView$BookAdapter;->this$0:Lcom/metamoji/ui/dialog/ShareObjectInfoView;

    iget-object p3, p3, Lcom/metamoji/ui/dialog/ShareObjectInfoView;->times:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method
