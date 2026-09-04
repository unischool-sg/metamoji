.class Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$GroupItemData;
.super Ljava/lang/Object;
.source "NsCollaboMemberSettingsDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GroupItemData"
.end annotation


# instance fields
.field public groupId:Ljava/lang/String;

.field public groupName:Ljava/lang/String;

.field final synthetic this$0:Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;


# direct methods
.method public constructor <init>(Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 84
    iput-object p1, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$GroupItemData;->this$0:Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p2, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$GroupItemData;->groupId:Ljava/lang/String;

    .line 86
    iput-object p3, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$GroupItemData;->groupName:Ljava/lang/String;

    return-void
.end method
