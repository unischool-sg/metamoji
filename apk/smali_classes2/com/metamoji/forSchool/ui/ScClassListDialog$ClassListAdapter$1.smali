.class Lcom/metamoji/forSchool/ui/ScClassListDialog$ClassListAdapter$1;
.super Ljava/lang/Object;
.source "ScClassListDialog.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/forSchool/ui/ScClassListDialog$ClassListAdapter;->createClassListCtrl(Landroid/view/View;Lcom/metamoji/forSchool/ui/ScClassListDialog$ClassListItemData;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/forSchool/ui/ScClassListDialog$ClassListAdapter;

.field final synthetic val$itemData:Lcom/metamoji/forSchool/ui/ScClassListDialog$ClassListItemData;


# direct methods
.method constructor <init>(Lcom/metamoji/forSchool/ui/ScClassListDialog$ClassListAdapter;Lcom/metamoji/forSchool/ui/ScClassListDialog$ClassListItemData;)V
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

    .line 275
    iput-object p1, p0, Lcom/metamoji/forSchool/ui/ScClassListDialog$ClassListAdapter$1;->this$1:Lcom/metamoji/forSchool/ui/ScClassListDialog$ClassListAdapter;

    iput-object p2, p0, Lcom/metamoji/forSchool/ui/ScClassListDialog$ClassListAdapter$1;->val$itemData:Lcom/metamoji/forSchool/ui/ScClassListDialog$ClassListItemData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 282
    iget-object p1, p0, Lcom/metamoji/forSchool/ui/ScClassListDialog$ClassListAdapter$1;->val$itemData:Lcom/metamoji/forSchool/ui/ScClassListDialog$ClassListItemData;

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    .line 279
    iput-boolean p2, p1, Lcom/metamoji/forSchool/ui/ScClassListDialog$ClassListItemData;->selected:Z

    .line 280
    iget-object p1, p0, Lcom/metamoji/forSchool/ui/ScClassListDialog$ClassListAdapter$1;->this$1:Lcom/metamoji/forSchool/ui/ScClassListDialog$ClassListAdapter;

    iget-object p1, p1, Lcom/metamoji/forSchool/ui/ScClassListDialog$ClassListAdapter;->this$0:Lcom/metamoji/forSchool/ui/ScClassListDialog;

    iget-object p2, p0, Lcom/metamoji/forSchool/ui/ScClassListDialog$ClassListAdapter$1;->this$1:Lcom/metamoji/forSchool/ui/ScClassListDialog$ClassListAdapter;

    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScClassListDialog$ClassListAdapter$1;->val$itemData:Lcom/metamoji/forSchool/ui/ScClassListDialog$ClassListItemData;

    invoke-virtual {p2, v0}, Lcom/metamoji/forSchool/ui/ScClassListDialog$ClassListAdapter;->getPosition(Ljava/lang/Object;)I

    move-result p2

    invoke-static {p1, p2}, Lcom/metamoji/forSchool/ui/ScClassListDialog;->-$$Nest$mhandleItemCheckChanged(Lcom/metamoji/forSchool/ui/ScClassListDialog;I)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 282
    iput-boolean p2, p1, Lcom/metamoji/forSchool/ui/ScClassListDialog$ClassListItemData;->selected:Z

    .line 284
    :goto_0
    iget-object p1, p0, Lcom/metamoji/forSchool/ui/ScClassListDialog$ClassListAdapter$1;->this$1:Lcom/metamoji/forSchool/ui/ScClassListDialog$ClassListAdapter;

    iget-object p1, p1, Lcom/metamoji/forSchool/ui/ScClassListDialog$ClassListAdapter;->this$0:Lcom/metamoji/forSchool/ui/ScClassListDialog;

    invoke-static {p1}, Lcom/metamoji/forSchool/ui/ScClassListDialog;->-$$Nest$mhandleSelectionChanged(Lcom/metamoji/forSchool/ui/ScClassListDialog;)V

    return-void
.end method
