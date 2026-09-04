.class Lcom/metamoji/ex/user/ScUserSelectDialog$UserListAdapter$1;
.super Ljava/lang/Object;
.source "ScUserSelectDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ex/user/ScUserSelectDialog$UserListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/ex/user/ScUserSelectDialog$UserListAdapter;

.field final synthetic val$btn:Landroid/widget/CheckBox;

.field final synthetic val$itemData:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/metamoji/ex/user/ScUserSelectDialog$UserListAdapter;Landroid/widget/CheckBox;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 83
    iput-object p1, p0, Lcom/metamoji/ex/user/ScUserSelectDialog$UserListAdapter$1;->this$1:Lcom/metamoji/ex/user/ScUserSelectDialog$UserListAdapter;

    iput-object p2, p0, Lcom/metamoji/ex/user/ScUserSelectDialog$UserListAdapter$1;->val$btn:Landroid/widget/CheckBox;

    iput-object p3, p0, Lcom/metamoji/ex/user/ScUserSelectDialog$UserListAdapter$1;->val$itemData:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 86
    iget-object p1, p0, Lcom/metamoji/ex/user/ScUserSelectDialog$UserListAdapter$1;->this$1:Lcom/metamoji/ex/user/ScUserSelectDialog$UserListAdapter;

    iget-object v0, p0, Lcom/metamoji/ex/user/ScUserSelectDialog$UserListAdapter$1;->val$btn:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/metamoji/ex/user/ScUserSelectDialog$UserListAdapter$1;->val$itemData:Ljava/util/Map;

    invoke-virtual {p1, v0, v1}, Lcom/metamoji/ex/user/ScUserSelectDialog$UserListAdapter;->selectChange(Landroid/widget/CheckBox;Ljava/util/Map;)V

    return-void
.end method
