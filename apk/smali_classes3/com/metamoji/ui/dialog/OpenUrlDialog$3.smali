.class Lcom/metamoji/ui/dialog/OpenUrlDialog$3;
.super Ljava/lang/Object;
.source "OpenUrlDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/dialog/OpenUrlDialog;->doneExecInner(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/dialog/OpenUrlDialog;

.field final synthetic val$resultArray:Ljava/util/List;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/dialog/OpenUrlDialog;Ljava/lang/String;Ljava/util/List;)V
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

    .line 275
    iput-object p1, p0, Lcom/metamoji/ui/dialog/OpenUrlDialog$3;->this$0:Lcom/metamoji/ui/dialog/OpenUrlDialog;

    iput-object p2, p0, Lcom/metamoji/ui/dialog/OpenUrlDialog$3;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/metamoji/ui/dialog/OpenUrlDialog$3;->val$resultArray:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 279
    iget-object v0, p0, Lcom/metamoji/ui/dialog/OpenUrlDialog$3;->val$url:Ljava/lang/String;

    invoke-static {v0}, Lcom/metamoji/dvm/DvmUtil;->reverseLink(Ljava/lang/String;)Lcom/metamoji/dvm/fw/result/DvmDMResultWithReverseLink;

    move-result-object v0

    .line 280
    iget-object v1, p0, Lcom/metamoji/ui/dialog/OpenUrlDialog$3;->val$resultArray:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
