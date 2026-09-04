.class Lcom/metamoji/ui/dialog/WebDavListView$1;
.super Ljava/lang/Object;
.source "WebDavListView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/dialog/WebDavListView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/dialog/WebDavListView;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/dialog/WebDavListView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 80
    iput-object p1, p0, Lcom/metamoji/ui/dialog/WebDavListView$1;->this$0:Lcom/metamoji/ui/dialog/WebDavListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 84
    iget-object p1, p0, Lcom/metamoji/ui/dialog/WebDavListView$1;->this$0:Lcom/metamoji/ui/dialog/WebDavListView;

    invoke-virtual {p1, p3}, Lcom/metamoji/ui/dialog/WebDavListView;->getFileAt(I)Lcom/metamoji/ui/dialog/WebDavListView$FileInfo;

    move-result-object p1

    .line 87
    iget-object p2, p0, Lcom/metamoji/ui/dialog/WebDavListView$1;->this$0:Lcom/metamoji/ui/dialog/WebDavListView;

    invoke-static {p2}, Lcom/metamoji/ui/dialog/WebDavListView;->-$$Nest$fgetmSelectListener(Lcom/metamoji/ui/dialog/WebDavListView;)Lcom/metamoji/ui/dialog/WebDavListView$IOnFileSelected;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 88
    iget-object p2, p0, Lcom/metamoji/ui/dialog/WebDavListView$1;->this$0:Lcom/metamoji/ui/dialog/WebDavListView;

    invoke-static {p2}, Lcom/metamoji/ui/dialog/WebDavListView;->-$$Nest$fgetmSelectListener(Lcom/metamoji/ui/dialog/WebDavListView;)Lcom/metamoji/ui/dialog/WebDavListView$IOnFileSelected;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/metamoji/ui/dialog/WebDavListView$IOnFileSelected;->onFileSelected(Lcom/metamoji/ui/dialog/WebDavListView$FileInfo;)Z

    :cond_0
    return-void
.end method
