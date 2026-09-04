.class Lcom/metamoji/ui/dialog/DocumentListDialog$2;
.super Ljava/util/HashMap;
.source "DocumentListDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/dialog/DocumentListDialog;->addPathInfoWithDriveId(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/dialog/DocumentListDialog;

.field final synthetic val$docId:Ljava/lang/String;

.field final synthetic val$driveId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/dialog/DocumentListDialog;Ljava/lang/String;Ljava/lang/String;)V
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

    .line 217
    iput-object p1, p0, Lcom/metamoji/ui/dialog/DocumentListDialog$2;->this$0:Lcom/metamoji/ui/dialog/DocumentListDialog;

    iput-object p2, p0, Lcom/metamoji/ui/dialog/DocumentListDialog$2;->val$driveId:Ljava/lang/String;

    iput-object p3, p0, Lcom/metamoji/ui/dialog/DocumentListDialog$2;->val$docId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    if-nez p2, :cond_0

    const-string p2, ""

    :cond_0
    const-string p1, "driveId"

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/ui/dialog/DocumentListDialog$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    const-string p1, "docId"

    invoke-virtual {p0, p1, p3}, Lcom/metamoji/ui/dialog/DocumentListDialog$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
