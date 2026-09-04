.class Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$6;
.super Ljava/util/HashMap;
.source "CabinetUserSelectDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->createGroupDic(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
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
.field final synthetic this$0:Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;

.field final synthetic val$name:Ljava/lang/String;

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;Ljava/lang/String;Ljava/lang/String;)V
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

    .line 391
    iput-object p1, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$6;->this$0:Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;

    iput-object p2, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$6;->val$name:Ljava/lang/String;

    iput-object p3, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$6;->val$path:Ljava/lang/String;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string p1, "group"

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$6;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    const-string p1, "path"

    invoke-virtual {p0, p1, p3}, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$6;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
