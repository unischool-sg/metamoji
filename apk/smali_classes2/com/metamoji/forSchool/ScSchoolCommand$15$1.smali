.class Lcom/metamoji/forSchool/ScSchoolCommand$15$1;
.super Ljava/util/HashMap;
.source "ScSchoolCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/forSchool/ScSchoolCommand$15;->action(Ljava/util/List;Ljava/lang/String;)V
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
.field final synthetic this$0:Lcom/metamoji/forSchool/ScSchoolCommand$15;

.field final synthetic val$nickName:Ljava/lang/String;

.field final synthetic val$userId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/metamoji/forSchool/ScSchoolCommand$15;Ljava/lang/String;Ljava/lang/String;)V
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

    .line 2014
    iput-object p1, p0, Lcom/metamoji/forSchool/ScSchoolCommand$15$1;->this$0:Lcom/metamoji/forSchool/ScSchoolCommand$15;

    iput-object p2, p0, Lcom/metamoji/forSchool/ScSchoolCommand$15$1;->val$nickName:Ljava/lang/String;

    iput-object p3, p0, Lcom/metamoji/forSchool/ScSchoolCommand$15$1;->val$userId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 2015
    const-string p1, "userName"

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/forSchool/ScSchoolCommand$15$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2016
    const-string p1, "dcUserId"

    invoke-virtual {p0, p1, p3}, Lcom/metamoji/forSchool/ScSchoolCommand$15$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
