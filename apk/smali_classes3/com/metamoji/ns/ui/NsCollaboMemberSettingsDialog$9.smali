.class Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$9;
.super Ljava/util/HashMap;
.source "NsCollaboMemberSettingsDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->updateLocalData()Ljava/util/ArrayList;
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
.field final synthetic this$0:Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;

.field final synthetic val$address:Ljava/lang/String;

.field final synthetic val$classNumber:Ljava/lang/String;

.field final synthetic val$isDcUser:Z

.field final synthetic val$loginName:Ljava/lang/String;

.field final synthetic val$nickName:Ljava/lang/String;

.field final synthetic val$userId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
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
            null,
            null,
            null
        }
    .end annotation

    .line 905
    iput-object p1, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$9;->this$0:Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;

    iput-boolean p2, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$9;->val$isDcUser:Z

    iput-object p3, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$9;->val$address:Ljava/lang/String;

    iput-object p4, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$9;->val$userId:Ljava/lang/String;

    iput-object p5, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$9;->val$nickName:Ljava/lang/String;

    iput-object p6, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$9;->val$classNumber:Ljava/lang/String;

    iput-object p7, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$9;->val$loginName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    if-eqz p2, :cond_0

    .line 906
    const-string p1, "dcUser"

    goto :goto_0

    :cond_0
    const-string p1, "mailUser"

    :goto_0
    const-string/jumbo p2, "type"

    invoke-virtual {p0, p2, p1}, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$9;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 907
    const-string p1, "address"

    invoke-virtual {p0, p1, p3}, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$9;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 908
    const-string/jumbo p1, "userId"

    invoke-virtual {p0, p1, p4}, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$9;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 909
    const-string p1, "nickname"

    invoke-virtual {p0, p1, p5}, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$9;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 910
    const-string p1, "classNumber"

    invoke-virtual {p0, p1, p6}, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$9;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 911
    const-string p1, "loginName"

    invoke-virtual {p0, p1, p7}, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$9;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
