.class Lcom/metamoji/forSchool/ui/ScClassImportDialog$1;
.super Ljava/lang/Object;
.source "ScClassImportDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/forSchool/ui/ScClassImportDialog;->onDone(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/forSchool/ui/ScClassImportDialog;

.field final synthetic val$classDic:Ljava/util/Map;

.field final synthetic val$classDicList:Ljava/util/List;

.field final synthetic val$finalView:Landroid/view/View;

.field final synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/metamoji/forSchool/ui/ScClassImportDialog;Ljava/util/Map;Landroid/view/View;Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 124
    iput-object p1, p0, Lcom/metamoji/forSchool/ui/ScClassImportDialog$1;->this$0:Lcom/metamoji/forSchool/ui/ScClassImportDialog;

    iput-object p2, p0, Lcom/metamoji/forSchool/ui/ScClassImportDialog$1;->val$classDic:Ljava/util/Map;

    iput-object p3, p0, Lcom/metamoji/forSchool/ui/ScClassImportDialog$1;->val$finalView:Landroid/view/View;

    iput-object p4, p0, Lcom/metamoji/forSchool/ui/ScClassImportDialog$1;->val$classDicList:Ljava/util/List;

    iput-object p5, p0, Lcom/metamoji/forSchool/ui/ScClassImportDialog$1;->val$name:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 127
    iget-object p1, p0, Lcom/metamoji/forSchool/ui/ScClassImportDialog$1;->val$classDic:Ljava/util/Map;

    const-string p2, "groupDicList"

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    iget-object p1, p0, Lcom/metamoji/forSchool/ui/ScClassImportDialog$1;->val$classDic:Ljava/util/Map;

    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScClassImportDialog$1;->this$0:Lcom/metamoji/forSchool/ui/ScClassImportDialog;

    iget-object v0, v0, Lcom/metamoji/forSchool/ui/ScClassImportDialog;->m_groupList:Ljava/util/List;

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    iget-object p1, p0, Lcom/metamoji/forSchool/ui/ScClassImportDialog$1;->this$0:Lcom/metamoji/forSchool/ui/ScClassImportDialog;

    iget-object p2, p0, Lcom/metamoji/forSchool/ui/ScClassImportDialog$1;->val$finalView:Landroid/view/View;

    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScClassImportDialog$1;->val$classDicList:Ljava/util/List;

    iget-object v1, p0, Lcom/metamoji/forSchool/ui/ScClassImportDialog$1;->val$name:Ljava/lang/String;

    invoke-static {p1, p2, v0, v1}, Lcom/metamoji/forSchool/ui/ScClassImportDialog;->-$$Nest$mhandleDoneButtonTapAfterExec(Lcom/metamoji/forSchool/ui/ScClassImportDialog;Landroid/view/View;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method
