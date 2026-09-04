.class Lcom/metamoji/ex/user/ScUserSelectDialog$3;
.super Ljava/util/HashMap;
.source "ScUserSelectDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ex/user/ScUserSelectDialog;->createUserDic(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;
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
.field final synthetic this$0:Lcom/metamoji/ex/user/ScUserSelectDialog;

.field final synthetic val$isTeacher:Z

.field final synthetic val$nickName:Ljava/lang/String;

.field final synthetic val$userId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/metamoji/ex/user/ScUserSelectDialog;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 226
    iput-object p1, p0, Lcom/metamoji/ex/user/ScUserSelectDialog$3;->this$0:Lcom/metamoji/ex/user/ScUserSelectDialog;

    iput-object p2, p0, Lcom/metamoji/ex/user/ScUserSelectDialog$3;->val$userId:Ljava/lang/String;

    iput-object p3, p0, Lcom/metamoji/ex/user/ScUserSelectDialog$3;->val$nickName:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/metamoji/ex/user/ScUserSelectDialog$3;->val$isTeacher:Z

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 227
    const-string p1, "userId"

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/ex/user/ScUserSelectDialog$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    const-string p1, "nickname"

    invoke-virtual {p0, p1, p3}, Lcom/metamoji/ex/user/ScUserSelectDialog$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    const-string p1, "isTeacher"

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/ex/user/ScUserSelectDialog$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
