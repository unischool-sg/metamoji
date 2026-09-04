.class Lcom/metamoji/forSchool/ScSchoolCommand$13;
.super Ljava/util/HashMap;
.source "ScSchoolCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/forSchool/ScSchoolCommand;->getScoreTargetUserList()Ljava/util/List;
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
.field final synthetic val$classNumber:Ljava/lang/String;

.field final synthetic val$loginName:Ljava/lang/String;

.field final synthetic val$userId:Ljava/lang/String;

.field final synthetic val$userName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1887
    iput-object p1, p0, Lcom/metamoji/forSchool/ScSchoolCommand$13;->val$userId:Ljava/lang/String;

    iput-object p2, p0, Lcom/metamoji/forSchool/ScSchoolCommand$13;->val$userName:Ljava/lang/String;

    iput-object p3, p0, Lcom/metamoji/forSchool/ScSchoolCommand$13;->val$classNumber:Ljava/lang/String;

    iput-object p4, p0, Lcom/metamoji/forSchool/ScSchoolCommand$13;->val$loginName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string v0, "userId"

    invoke-virtual {p0, v0, p1}, Lcom/metamoji/forSchool/ScSchoolCommand$13;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1888
    const-string p1, "userName"

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/forSchool/ScSchoolCommand$13;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_0

    goto :goto_0

    .line 1889
    :cond_0
    const-string p3, ""

    :goto_0
    const-string p1, "classNo"

    invoke-virtual {p0, p1, p3}, Lcom/metamoji/forSchool/ScSchoolCommand$13;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1890
    const-string p1, "loginName"

    invoke-virtual {p0, p1, p4}, Lcom/metamoji/forSchool/ScSchoolCommand$13;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
