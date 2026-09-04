.class Lcom/metamoji/ex/SendDialog$1;
.super Ljava/util/HashMap;
.source "SendDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ex/SendDialog;-><init>(Lcom/metamoji/ui/PopupCommand;)V
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
.field final synthetic this$0:Lcom/metamoji/ex/SendDialog;

.field final synthetic val$groupName2:Ljava/lang/String;

.field final synthetic val$memberDic:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/metamoji/ex/SendDialog;Ljava/util/Map;Ljava/lang/String;)V
    .locals 1
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

    .line 229
    iput-object p1, p0, Lcom/metamoji/ex/SendDialog$1;->this$0:Lcom/metamoji/ex/SendDialog;

    iput-object p2, p0, Lcom/metamoji/ex/SendDialog$1;->val$memberDic:Ljava/util/Map;

    iput-object p3, p0, Lcom/metamoji/ex/SendDialog$1;->val$groupName2:Ljava/lang/String;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 230
    const-string p1, "user-id"

    invoke-static {p2, p1}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "userId"

    invoke-virtual {p0, v0, p1}, Lcom/metamoji/ex/SendDialog$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    const-string p1, "user-name"

    invoke-static {p2, p1}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "nickname"

    invoke-virtual {p0, p2, p1}, Lcom/metamoji/ex/SendDialog$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    .line 232
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string p2, "isTeacher"

    invoke-virtual {p0, p2, p1}, Lcom/metamoji/ex/SendDialog$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    const-string p1, "group"

    invoke-virtual {p0, p1, p3}, Lcom/metamoji/ex/SendDialog$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
