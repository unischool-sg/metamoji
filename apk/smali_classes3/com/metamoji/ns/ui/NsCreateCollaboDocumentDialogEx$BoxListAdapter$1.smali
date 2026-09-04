.class Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$BoxListAdapter$1;
.super Ljava/lang/Object;
.source "NsCreateCollaboDocumentDialogEx.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$BoxListAdapter;->createBoxListItem(Landroid/view/View;Ljava/util/Map;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$BoxListAdapter;

.field final synthetic val$itemData:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$BoxListAdapter;Ljava/util/Map;)V
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

    .line 194
    iput-object p1, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$BoxListAdapter$1;->this$1:Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$BoxListAdapter;

    iput-object p2, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$BoxListAdapter$1;->val$itemData:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 197
    iget-object p1, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$BoxListAdapter$1;->this$1:Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$BoxListAdapter;

    iget-object p1, p1, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$BoxListAdapter;->this$0:Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;

    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$BoxListAdapter$1;->val$itemData:Ljava/util/Map;

    invoke-virtual {p1, v0}, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->handleDeleteItem(Ljava/util/Map;)V

    return-void
.end method
