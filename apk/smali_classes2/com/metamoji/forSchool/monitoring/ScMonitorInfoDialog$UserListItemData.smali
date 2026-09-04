.class Lcom/metamoji/forSchool/monitoring/ScMonitorInfoDialog$UserListItemData;
.super Ljava/lang/Object;
.source "ScMonitorInfoDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/forSchool/monitoring/ScMonitorInfoDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UserListItemData"
.end annotation


# static fields
.field public static final LISTITEMDATA_TYPE_SECTION_DOIT:Ljava/lang/String; = "sectionDoIt"

.field public static final LISTITEMDATA_TYPE_SECTION_HELP:Ljava/lang/String; = "sectionHelp"

.field public static final LISTITEMDATA_TYPE_SECTION_NOTYET:Ljava/lang/String; = "sectionNotYet"

.field public static final LISTITEMDATA_TYPE_SECTION_OFFLINE:Ljava/lang/String; = "sectionOffline"

.field public static final LISTITEMDATA_TYPE_USER_DOIT:Ljava/lang/String; = "userDoIt"

.field public static final LISTITEMDATA_TYPE_USER_HELP:Ljava/lang/String; = "userHelp"

.field public static final LISTITEMDATA_TYPE_USER_NOTYET:Ljava/lang/String; = "userNotYet"

.field public static final LISTITEMDATA_TYPE_USER_OFFLINE:Ljava/lang/String; = "userOffline"


# instance fields
.field public name:Ljava/lang/String;

.field public num:I

.field final synthetic this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorInfoDialog;

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/metamoji/forSchool/monitoring/ScMonitorInfoDialog;Ljava/lang/String;Ljava/lang/String;)V
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

    .line 52
    iput-object p1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorInfoDialog$UserListItemData;->this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorInfoDialog;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p2, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorInfoDialog$UserListItemData;->type:Ljava/lang/String;

    .line 55
    iput-object p3, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorInfoDialog$UserListItemData;->name:Ljava/lang/String;

    const/4 p1, -0x1

    .line 56
    iput p1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorInfoDialog$UserListItemData;->num:I

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/forSchool/monitoring/ScMonitorInfoDialog;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 46
    iput-object p1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorInfoDialog$UserListItemData;->this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorInfoDialog;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p2, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorInfoDialog$UserListItemData;->type:Ljava/lang/String;

    .line 49
    iput-object p3, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorInfoDialog$UserListItemData;->name:Ljava/lang/String;

    .line 50
    iput p4, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorInfoDialog$UserListItemData;->num:I

    return-void
.end method
