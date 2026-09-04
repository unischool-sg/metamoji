.class public final synthetic Lcom/metamoji/un/video/UnVideoUnit$UploadProgress$WhenMappings;
.super Ljava/lang/Object;
.source "UnVideoUnit.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/un/video/UnVideoUnit$UploadProgress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1019
    name = "WhenMappings"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;->values()[Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;->INIT:Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;

    invoke-virtual {v1}, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v1, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;->WAITING:Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;

    invoke-virtual {v1}, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v1, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;->UPLOADING:Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;

    invoke-virtual {v1}, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v1, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;->ERROR:Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;

    invoke-virtual {v1}, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    sput-object v0, Lcom/metamoji/un/video/UnVideoUnit$UploadProgress$WhenMappings;->$EnumSwitchMapping$0:[I

    return-void
.end method
