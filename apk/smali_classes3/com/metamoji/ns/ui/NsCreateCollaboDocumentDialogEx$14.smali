.class Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$14;
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
    .locals 1
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

    .line 1041
    iput-object p1, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$14;->this$0:Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;

    iput-object p2, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$14;->val$userId:Ljava/lang/String;

    iput-object p3, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$14;->val$nickName:Ljava/lang/String;

    iput-object p4, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$14;->val$classNumber:Ljava/lang/String;

    iput-object p5, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$14;->val$loginName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo p1, "type"

    const-string v0, "dcUser"

    invoke-virtual {p0, p1, v0}, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$14;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1042
    const-string p1, "address"

    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$14;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1043
    const-string/jumbo p1, "userId"

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$14;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1044
    const-string p1, "nickname"

    invoke-virtual {p0, p1, p3}, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$14;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1045
    const-string p1, "classNumber"

    invoke-virtual {p0, p1, p4}, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$14;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1046
    const-string p1, "loginName"

    invoke-virtual {p0, p1, p5}, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$14;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
