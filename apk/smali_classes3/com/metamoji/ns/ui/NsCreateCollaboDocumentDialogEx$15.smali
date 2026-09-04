.class Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$15;
.super Ljava/util/HashMap;
.source "NsCreateCollaboDocumentDialogEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->addMemberFromSharedDriveForSchool(Ljava/lang/String;)V
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
.field final synthetic this$0:Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;

.field final synthetic val$classNumber:Ljava/lang/String;

.field final synthetic val$loginName:Ljava/lang/String;

.field final synthetic val$nickName:Ljava/lang/String;

.field final synthetic val$userId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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

    .line 1047
    iput-object p1, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$15;->this$0:Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;

    iput-object p2, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$15;->val$userId:Ljava/lang/String;

    iput-object p3, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$15;->val$nickName:Ljava/lang/String;

    iput-object p4, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$15;->val$classNumber:Ljava/lang/String;

    iput-object p5, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$15;->val$loginName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 1048
    const-string/jumbo p1, "user-id"

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$15;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1049
    const-string p1, ""

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    move-object p3, p1

    :goto_0
    const-string/jumbo p2, "user-name"

    invoke-virtual {p0, p2, p3}, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$15;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p4, :cond_1

    goto :goto_1

    :cond_1
    move-object p4, p1

    .line 1050
    :goto_1
    const-string p2, "class-number"

    invoke-virtual {p0, p2, p4}, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$15;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p5, :cond_2

    goto :goto_2

    :cond_2
    move-object p5, p1

    .line 1051
    :goto_2
    const-string p1, "login-name"

    invoke-virtual {p0, p1, p5}, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$15;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
