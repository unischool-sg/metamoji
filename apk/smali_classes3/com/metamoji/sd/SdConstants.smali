.class public Lcom/metamoji/sd/SdConstants;
.super Ljava/lang/Object;
.source "SdConstants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/sd/SdConstants$SdUserStatus;,
        Lcom/metamoji/sd/SdConstants$SdUserType;
    }
.end annotation


# static fields
.field public static final CONTENTS_ATTRIBUTE_ATTACHMENT:I = 0x10

.field public static final CONTENTS_ATTRIBUTE_LOCKED_PACKAGE:I = 0x100

.field public static final CONTENTS_ATTRIBUTE_MULTI_SHEET:I = 0x40

.field public static final CONTENTS_ATTRIBUTE_OFFLINE_LAYER:I = 0x800

.field public static final CONTENTS_ATTRIBUTE_OFFLINE_SHARE:I = 0x200

.field public static final CONTENTS_ATTRIBUTE_PACKAGE:I = 0x20

.field public static final CONTENTS_ATTRIBUTE_PROTECTED:I = 0x1

.field public static final CONTENTS_ATTRIBUTE_REAL_SIZE:I = 0x400

.field public static final CONTENTS_ATTRIBUTE_TEMPLATE:I = 0x2

.field public static final CONTENTS_ATTRIBUTE_TEMPLATE_SHARE:I = 0x8

.field public static final CONTENTS_ATTRIBUTE_UNNUMBERED:I = 0x80

.field public static final CONTENTS_ATTRIBUTE_VOICE:I = 0x4

.field public static final COPYABLE_META_VERSION:F = 1.0f

.field public static final DOCID_MAX_LENGTH:I = 0x40

.field public static final DOCUMENT_ERROR_KEY_MAINT_MSG:Ljava/lang/String; = "maintMessage"

.field public static final DOCUMENT_KEY_ARCHIVEFILE:Ljava/lang/String; = "archiveFile"

.field public static final DOCUMENT_KEY_DOCID:Ljava/lang/String; = "documentId"

.field public static final DOCUMENT_KEY_EDITOR:Ljava/lang/String; = "editor"

.field public static final DOCUMENT_KEY_OFFLINE:Ljava/lang/String; = "isOffline"

.field public static final DRIVE_ENTRY_SYNC_MODE_ADDITION_ONLRY:I = 0x1

.field public static final DRIVE_ENTRY_SYNC_MODE_ADD_SPECIFIED:I = 0x5

.field public static final DRIVE_ENTRY_SYNC_MODE_GROUP_ONLY:I = 0x4

.field public static final DRIVE_ENTRY_SYNC_MODE_NORMAL:I = 0x0

.field public static final DRIVE_ENTRY_SYNC_MODE_SPECIFIED_IDS:I = 0x2

.field public static final DRIVE_ENTRY_SYNC_MODE_TO_DISPLAY_ONLY:I = 0x3

.field public static final FOLDER_COUNT_MAX:I = 0x3e8

.field public static final FOLDER_DEPTH_MAX:I = 0xc8

.field public static final FOLDER_SIBLING_MAX:I = 0xc8

.field public static final LOCALOPTIONS_DISCARD:I = 0x10

.field public static final LOCALOPTIONS_EXIST_SENDING_DATA:I = 0x4

.field public static final LOCALOPTIONS_FORCE_DOWNLOAD:I = 0x2

.field public static final LOCALOPTIONS_FROM_V2_DOCUMENT:I = 0x1

.field public static final LOCALOPTIONS_IMPORT_PACKAGE:I = 0x8

.field public static final NOT_DC_USER_ID:Ljava/lang/String; = "-1"

.field public static final OPTIONS_COPIED_SHARE:I = 0x4

.field public static final OPTIONS_PRIORITY:I = 0x2

.field public static final OPTIONS_SYSTEMFILE:I = 0x8

.field public static final OPTIONS_TRASHED:I = 0x1

.field public static final PAGE_MAX_DOCUMENT_COUNT:I = 0xc8

.field public static final SEARCHDATA_TYPE_ADD:I = 0x1

.field public static final SEARCHDATA_TYPE_DELETE:I = 0x3

.field public static final SEARCHDATA_TYPE_UPDATE:I = 0x2

.field public static final SYNC_EVENT_NAME_A_NOTE_CONFLICT:Ljava/lang/String; = "sharedOnenoteSyncConflict"

.field public static final SYNC_EVENT_NAME_A_NOTE_END:Ljava/lang/String; = "sharedOnenoteSyncEnd"

.field public static final SYNC_EVENT_NAME_A_NOTE_START:Ljava/lang/String; = "sharedOnenoteSyncStart"

.field public static final SYNC_EVENT_NAME_A_SHAREDDRIVE_END:Ljava/lang/String; = "sharedOneDriveSyncEnd"

.field public static final SYNC_EVENT_NAME_A_SHAREDDRIVE_START:Ljava/lang/String; = "sharedOneDriveSyncStart"

.field public static final SYNC_EVENT_NAME_NOTES_END:Ljava/lang/String; = "sharedNotesSyncEnd"

.field public static final SYNC_EVENT_NAME_NOTES_START:Ljava/lang/String; = "sharedNotesSyncStart"

.field public static final SYNC_EVENT_NAME_SHAREDDRIVE_END:Ljava/lang/String; = "sharedDriveSyncEnd"

.field public static final SYNC_EVENT_NAME_SHAREDDRIVE_LIST_UPDATED:Ljava/lang/String; = "sharedDriveListSyncUpdated"

.field public static final SYNC_EVENT_NAME_SHAREDDRIVE_START:Ljava/lang/String; = "sharedDriveSyncStart"

.field public static final SYNC_EVENT_NAME_TAGORDER_TOO_LONG:Ljava/lang/String; = "sharedTagOrderTooLong"

.field public static final SYNC_EXTPARAM_KEY_DRIVEID:Ljava/lang/String; = "mmjsd.sync.extparam.key.driveId"

.field public static final SYNC_EXTPARAM_KEY_DRIVE_ENTRY_SYNC_MODE:Ljava/lang/String; = "mmjsd.sync.extparam.key.driveEntrySyncMode"

.field public static final SYNC_EXTPARAM_KEY_GROUP_IDS:Ljava/lang/String; = "mmjsd.sync.extparam.key.groupIds"

.field public static final SYNC_EXTPARAM_KEY_PRIVATEID:Ljava/lang/String; = "mmjsd.sync.extparam.key.privateId"

.field public static final SYNC_EXTPARAM_KEY_SPECIFIED_IDS:Ljava/lang/String; = "mmjsd.sync.extparam.key.specifiedIds"

.field public static final TAGDEF_COUNT_MAX:I = 0x2710

.field public static final TAGNAME_PROHIBITION:Ljava/lang/String; = "?\\/:*?\"<>|"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
