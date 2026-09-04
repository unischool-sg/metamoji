.class Lcom/metamoji/ui/cabinet/TreeView$1;
.super Ljava/lang/Object;
.source "TreeView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/cabinet/TreeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/cabinet/TreeView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 88
    const-class v0, Lcom/metamoji/ui/cabinet/TreeView;

    return-void
.end method

.method constructor <init>(Lcom/metamoji/ui/cabinet/TreeView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 88
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/TreeView$1;->this$0:Lcom/metamoji/ui/cabinet/TreeView;

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

    .line 91
    iget-object p4, p0, Lcom/metamoji/ui/cabinet/TreeView$1;->this$0:Lcom/metamoji/ui/cabinet/TreeView;

    invoke-static {p4}, Lcom/metamoji/ui/cabinet/TreeView;->-$$Nest$fget_treeAdapter(Lcom/metamoji/ui/cabinet/TreeView;)Lcom/metamoji/ui/cabinet/TreeAdapter;

    move-result-object p4

    if-eqz p4, :cond_0

    .line 92
    iget-object p4, p0, Lcom/metamoji/ui/cabinet/TreeView$1;->this$0:Lcom/metamoji/ui/cabinet/TreeView;

    invoke-static {p4}, Lcom/metamoji/ui/cabinet/TreeView;->-$$Nest$fget_treeAdapter(Lcom/metamoji/ui/cabinet/TreeView;)Lcom/metamoji/ui/cabinet/TreeAdapter;

    move-result-object p4

    invoke-virtual {p4, p3}, Lcom/metamoji/ui/cabinet/TreeAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p4

    .line 95
    iget-object p5, p0, Lcom/metamoji/ui/cabinet/TreeView$1;->this$0:Lcom/metamoji/ui/cabinet/TreeView;

    invoke-static {p5}, Lcom/metamoji/ui/cabinet/TreeView;->-$$Nest$fget_lisner(Lcom/metamoji/ui/cabinet/TreeView;)Lcom/metamoji/ui/cabinet/TreeView$OnTreeItemClickListener;

    move-result-object p5

    invoke-interface {p5, p1, p2, p4, p3}, Lcom/metamoji/ui/cabinet/TreeView$OnTreeItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;Ljava/lang/Object;I)V

    :cond_0
    return-void
.end method
