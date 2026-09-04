.class Lcom/metamoji/forSchool/ui/UiHeaderListView$3;
.super Ljava/lang/Object;
.source "UiHeaderListView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/forSchool/ui/UiHeaderListView;->updateHeaderView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/forSchool/ui/UiHeaderListView;

.field final synthetic val$finalColumnPos:I


# direct methods
.method constructor <init>(Lcom/metamoji/forSchool/ui/UiHeaderListView;I)V
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

    .line 704
    iput-object p1, p0, Lcom/metamoji/forSchool/ui/UiHeaderListView$3;->this$0:Lcom/metamoji/forSchool/ui/UiHeaderListView;

    iput p2, p0, Lcom/metamoji/forSchool/ui/UiHeaderListView$3;->val$finalColumnPos:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 707
    iget-object p1, p0, Lcom/metamoji/forSchool/ui/UiHeaderListView$3;->this$0:Lcom/metamoji/forSchool/ui/UiHeaderListView;

    iget v0, p0, Lcom/metamoji/forSchool/ui/UiHeaderListView$3;->val$finalColumnPos:I

    invoke-static {p1, v0}, Lcom/metamoji/forSchool/ui/UiHeaderListView;->-$$Nest$mhandleSortButtonTap(Lcom/metamoji/forSchool/ui/UiHeaderListView;I)V

    return-void
.end method
