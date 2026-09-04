.class Lcom/metamoji/ui/cabinet/TreeAdapter$1;
.super Ljava/lang/Object;
.source "TreeAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/cabinet/TreeAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/cabinet/TreeAdapter;

.field final synthetic val$item:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/cabinet/TreeAdapter;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 538
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/TreeAdapter$1;->this$0:Lcom/metamoji/ui/cabinet/TreeAdapter;

    iput-object p2, p0, Lcom/metamoji/ui/cabinet/TreeAdapter$1;->val$item:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 541
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/TreeAdapter$1;->this$0:Lcom/metamoji/ui/cabinet/TreeAdapter;

    iget-object v0, p0, Lcom/metamoji/ui/cabinet/TreeAdapter$1;->val$item:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lcom/metamoji/ui/cabinet/TreeAdapter;->toggleExpand(Ljava/lang/Object;)V

    return-void
.end method
