.class Lcom/metamoji/ui/dialog/DocumentListDialog$ListAdapter$1;
.super Ljava/lang/Object;
.source "DocumentListDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/dialog/DocumentListDialog$ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/ui/dialog/DocumentListDialog$ListAdapter;

.field final synthetic val$itemData:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/dialog/DocumentListDialog$ListAdapter;Ljava/util/Map;)V
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

    .line 67
    iput-object p1, p0, Lcom/metamoji/ui/dialog/DocumentListDialog$ListAdapter$1;->this$1:Lcom/metamoji/ui/dialog/DocumentListDialog$ListAdapter;

    iput-object p2, p0, Lcom/metamoji/ui/dialog/DocumentListDialog$ListAdapter$1;->val$itemData:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 70
    iget-object p1, p0, Lcom/metamoji/ui/dialog/DocumentListDialog$ListAdapter$1;->this$1:Lcom/metamoji/ui/dialog/DocumentListDialog$ListAdapter;

    iget-object p1, p1, Lcom/metamoji/ui/dialog/DocumentListDialog$ListAdapter;->this$0:Lcom/metamoji/ui/dialog/DocumentListDialog;

    iget-object v0, p0, Lcom/metamoji/ui/dialog/DocumentListDialog$ListAdapter$1;->val$itemData:Ljava/util/Map;

    invoke-virtual {p1, v0}, Lcom/metamoji/ui/dialog/DocumentListDialog;->handleItemClick(Ljava/util/Map;)V

    return-void
.end method
