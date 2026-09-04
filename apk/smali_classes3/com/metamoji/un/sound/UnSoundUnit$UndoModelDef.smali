.class Lcom/metamoji/un/sound/UnSoundUnit$UndoModelDef;
.super Ljava/lang/Object;
.source "UnSoundUnit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/un/sound/UnSoundUnit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UndoModelDef"
.end annotation


# static fields
.field public static final AUTHOR_INFO_NEW_VALUE:Ljava/lang/String; = "na"

.field public static final AUTHOR_INFO_OLD_VALUE:Ljava/lang/String; = "oa"

.field public static final MEDIA_ID_NEW_VALUE:Ljava/lang/String; = "nm"

.field public static final MEDIA_ID_OLD_VALUE:Ljava/lang/String; = "om"

.field public static final MODELTYPE_GEOPROP:Ljava/lang/String; = "soundUnitGeopropUndo"

.field public static final MODELTYPE_MEDIA_ID:Ljava/lang/String; = "soundUnitMediaId"

.field public static final MODELTYPE_RECORD_ID:Ljava/lang/String; = "soundUnitRecordId"

.field public static final MODELTYPE_SOUND_UNIT:Ljava/lang/String; = "soundUnitUndo"

.field public static final MODELTYPE_TICKET:Ljava/lang/String; = "soundUnitTicket"

.field public static final NEW_AUTHOR_INFO:Ljava/lang/String; = "na"

.field public static final NEW_HEIGHT:Ljava/lang/String; = "nh"

.field public static final NEW_MEDIA_ID:Ljava/lang/String; = "nm"

.field public static final NEW_RECORD_ID:Ljava/lang/String; = "nr"

.field public static final NEW_ROTATION:Ljava/lang/String; = "nr"

.field public static final NEW_TICKET:Ljava/lang/String; = "nt"

.field public static final NEW_URL:Ljava/lang/String; = "nu"

.field public static final NEW_WIDTH:Ljava/lang/String; = "nw"

.field public static final NEW_X:Ljava/lang/String; = "nx"

.field public static final NEW_Y:Ljava/lang/String; = "ny"

.field public static final OLD_AUTHOR_INFO:Ljava/lang/String; = "oa"

.field public static final OLD_HEIGHT:Ljava/lang/String; = "oh"

.field public static final OLD_MEDIA_ID:Ljava/lang/String; = "om"

.field public static final OLD_RECORD_ID:Ljava/lang/String; = "or"

.field public static final OLD_ROTATION:Ljava/lang/String; = "or"

.field public static final OLD_TICKET:Ljava/lang/String; = "ot"

.field public static final OLD_URL:Ljava/lang/String; = "ou"

.field public static final OLD_WIDTH:Ljava/lang/String; = "ow"

.field public static final OLD_X:Ljava/lang/String; = "ox"

.field public static final OLD_Y:Ljava/lang/String; = "oy"

.field public static final RECORD_ID_NEW_VALUE:Ljava/lang/String; = "nr"

.field public static final RECORD_ID_OLD_VALUE:Ljava/lang/String; = "or"

.field public static final TICKET_NEW_VALUE:Ljava/lang/String; = "nt"

.field public static final TICKET_OLD_VALUE:Ljava/lang/String; = "ot"

.field public static final URL_NEW_VALUE:Ljava/lang/String; = "nu"

.field public static final URL_OLD_VALUE:Ljava/lang/String; = "ou"

.field public static final VERSION_LATEST_GEOPROP:I = 0x1

.field public static final VERSION_LATEST_MEDIA_ID:I = 0x1

.field public static final VERSION_LATEST_RECORD_ID:I = 0x1

.field public static final VERSION_LATEST_SOUND_UNIT:I = 0x1

.field public static final VERSION_LATEST_TICKET:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/metamoji/un/sound/UnSoundUnit;


# direct methods
.method constructor <init>(Lcom/metamoji/un/sound/UnSoundUnit;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 124
    iput-object p1, p0, Lcom/metamoji/un/sound/UnSoundUnit$UndoModelDef;->this$0:Lcom/metamoji/un/sound/UnSoundUnit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
