.class Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberItemData;
.super Ljava/lang/Object;
.source "NsCollaboMemberSettingsDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MemberItemData"
.end annotation


# instance fields
.field public address:Ljava/lang/String;

.field public classNumber:Ljava/lang/String;

.field public groupId:Ljava/lang/String;

.field public isDcUser:Z

.field public isMyself:Z

.field public isOwner:Z

.field public labelText:Ljava/lang/String;

.field public loginName:Ljava/lang/String;

.field public nickName:Ljava/lang/String;

.field public parentDlg:Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;

.field public role:I

.field final synthetic this$0:Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;

.field public userId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 89
    iput-object p1, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberItemData;->this$0:Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
