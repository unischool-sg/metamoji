.class public Lcom/metamoji/dvm/DvmConstants;
.super Ljava/lang/Object;
.source "DvmConstants.java"


# static fields
.field public static final DOCUMENT_INFO_KEY_OPTIONS:Ljava/lang/String; = "options"

.field public static final DOCUMENT_INFO_KEY_TITLE:Ljava/lang/String; = "title"

.field public static final DRIVE_INFO_KEY_DRIVEID:Ljava/lang/String; = "id"

.field public static final DRIVE_INFO_KEY_GROUPID:Ljava/lang/String; = "groupId"

.field public static final DRIVE_INFO_KEY_HIDDEN:Ljava/lang/String; = "hidden"

.field public static final DRIVE_INFO_KEY_NAME:Ljava/lang/String; = "name"

.field public static final DRIVE_INFO_KEY_PART:Ljava/lang/String; = "part"

.field public static final DRIVE_INFO_KEY_TEAMID:Ljava/lang/String; = "teamId"

.field public static final DVM_DOCUMENT_KEY_UPDATED:Ljava/lang/String; = "updated"

.field public static final DVM_GETSHARE_DOCINFO_KEY_COMPANYID:Ljava/lang/String; = "companyId"

.field public static final DVM_GETSHARE_DOCINFO_KEY_ROOMID:Ljava/lang/String; = "roomId"

.field public static final DVM_IMPORT_OPT_KEY_CREATE:Ljava/lang/String; = "create"

.field public static final DVM_IMPORT_OPT_KEY_DISCARD:Ljava/lang/String; = "discard"

.field public static final DVM_IMPORT_OPT_KEY_DOCUMENTID:Ljava/lang/String; = "documentId"

.field public static final DVM_IMPORT_OPT_KEY_ENTITYID:Ljava/lang/String; = "entityId"

.field public static final DVM_IMPORT_OPT_KEY_MULTISHEET:Ljava/lang/String; = "multiSheet"

.field public static final DVM_IMPORT_OPT_KEY_ORGDATE:Ljava/lang/String; = "orgDate"

.field public static final DVM_IMPORT_OPT_KEY_PACKAGEID:Ljava/lang/String; = "packageId"

.field public static final DVM_IMPORT_OPT_KEY_REALSIZE:Ljava/lang/String; = "realSize"

.field public static final DVM_IMPORT_OPT_KEY_SYSTEMFILE:Ljava/lang/String; = "systemFile"

.field public static final DVM_IMPORT_OPT_KEY_UPDATE:Ljava/lang/String; = "update"

.field public static final DVM_PRIVATE_DRIVE_ID:Ljava/lang/String;

.field public static final DVM_TEAM_ID_DIC_KEY_PRIVATE_DRIVE:Ljava/lang/String; = "privateDrive"

.field public static final MMJ_DVM_DOCUMENT_ERROR_KEY_MAINT_MSG:Ljava/lang/String; = "maintMessage"

.field public static final MMJ_DVM_DOCUMENT_KEY_DOCID:Ljava/lang/String; = "documentId"

.field public static final MMJ_DVM_DOCUMENT_KEY_EDITOR:Ljava/lang/String; = "editor"

.field public static final MMJ_DVM_DOCUMENT_KEY_OFFLINE:Ljava/lang/String; = "isOffline"

.field public static final MMJ_DVM_DOCUMENT_KEY_THUMBNAIL_PATH:Ljava/lang/String; = "thumbnailPath"

.field public static final MMJ_DVM_MEMBER_INFO_KEY_ID:Ljava/lang/String; = "id"

.field public static final MMJ_DVM_MEMBER_INFO_KEY_IS_OWNER:Ljava/lang/String; = "isOwner"

.field public static final MMJ_DVM_MEMBER_INFO_KEY_IS_TEACHER:Ljava/lang/String; = "isTeacher"

.field public static final MMJ_DVM_MEMBER_INFO_KEY_NAME:Ljava/lang/String; = "name"

.field public static final MMJ_DVM_MEMBER_INFO_KEY_STATUS:Ljava/lang/String; = "status"

.field public static final MMJ_DVM_MEMBER_INFO_KEY_TYPE:Ljava/lang/String; = "type"

.field public static final MMJ_GETSHARE_KEY_DOCID:Ljava/lang/String; = "docId"

.field public static final MMJ_GETSHARE_KEY_DRIVEID:Ljava/lang/String; = "driveId"

.field public static final MMJ_SHARE_NOTE_INFO_KEY_CONTENTS_ATTRIBUTE:Ljava/lang/String; = "contentsAttribute"

.field public static final MMJ_SHARE_NOTE_INFO_KEY_DOCID:Ljava/lang/String; = "documentId"

.field public static final MMJ_SHARE_NOTE_INFO_KEY_DRIVEID:Ljava/lang/String; = "driveId"

.field public static final MMJ_SHARE_NOTE_INFO_KEY_LAST_SEQUENCE:Ljava/lang/String; = "lastSequence"

.field public static final MMJ_SHARE_NOTE_INFO_KEY_ROOMID:Ljava/lang/String; = "roomId"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    .line 29
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    sput-object v0, Lcom/metamoji/dvm/DvmConstants;->DVM_PRIVATE_DRIVE_ID:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
