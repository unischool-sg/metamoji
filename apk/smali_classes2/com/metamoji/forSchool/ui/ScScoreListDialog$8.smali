.class Lcom/metamoji/forSchool/ui/ScScoreListDialog$8;
.super Ljava/util/HashMap;
.source "ScScoreListDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/forSchool/ui/ScScoreListDialog;->createRecord(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
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
.field final synthetic this$0:Lcom/metamoji/forSchool/ui/ScScoreListDialog;

.field final synthetic val$classNo:Ljava/lang/String;

.field final synthetic val$loginName:Ljava/lang/String;

.field final synthetic val$userId:Ljava/lang/String;

.field final synthetic val$userName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/metamoji/forSchool/ui/ScScoreListDialog;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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

    .line 281
    iput-object p1, p0, Lcom/metamoji/forSchool/ui/ScScoreListDialog$8;->this$0:Lcom/metamoji/forSchool/ui/ScScoreListDialog;

    iput-object p2, p0, Lcom/metamoji/forSchool/ui/ScScoreListDialog$8;->val$userId:Ljava/lang/String;

    iput-object p3, p0, Lcom/metamoji/forSchool/ui/ScScoreListDialog$8;->val$userName:Ljava/lang/String;

    iput-object p4, p0, Lcom/metamoji/forSchool/ui/ScScoreListDialog$8;->val$classNo:Ljava/lang/String;

    iput-object p5, p0, Lcom/metamoji/forSchool/ui/ScScoreListDialog$8;->val$loginName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string p1, "userId"

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/forSchool/ui/ScScoreListDialog$8;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    const-string p1, "userName"

    invoke-virtual {p0, p1, p3}, Lcom/metamoji/forSchool/ui/ScScoreListDialog$8;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p4, :cond_0

    goto :goto_0

    .line 283
    :cond_0
    const-string p4, ""

    :goto_0
    const-string p1, "classNo"

    invoke-virtual {p0, p1, p4}, Lcom/metamoji/forSchool/ui/ScScoreListDialog$8;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    const-string p1, "loginName"

    invoke-virtual {p0, p1, p5}, Lcom/metamoji/forSchool/ui/ScScoreListDialog$8;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
