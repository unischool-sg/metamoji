.class public final synthetic Lcom/metamoji/ui/task/GetFileTask$WhenMappings;
.super Ljava/lang/Object;
.source "GetFileTask.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/task/GetFileTask;
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

    invoke-static {}, Lcom/metamoji/ui/task/GetFileTask$Mode;->values()[Lcom/metamoji/ui/task/GetFileTask$Mode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/metamoji/ui/task/GetFileTask$Mode;->READ:Lcom/metamoji/ui/task/GetFileTask$Mode;

    invoke-virtual {v1}, Lcom/metamoji/ui/task/GetFileTask$Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v1, Lcom/metamoji/ui/task/GetFileTask$Mode;->WRITE:Lcom/metamoji/ui/task/GetFileTask$Mode;

    invoke-virtual {v1}, Lcom/metamoji/ui/task/GetFileTask$Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v1, Lcom/metamoji/ui/task/GetFileTask$Mode;->CREATE:Lcom/metamoji/ui/task/GetFileTask$Mode;

    invoke-virtual {v1}, Lcom/metamoji/ui/task/GetFileTask$Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v1, Lcom/metamoji/ui/task/GetFileTask$Mode;->DIRECTORY:Lcom/metamoji/ui/task/GetFileTask$Mode;

    invoke-virtual {v1}, Lcom/metamoji/ui/task/GetFileTask$Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    sput-object v0, Lcom/metamoji/ui/task/GetFileTask$WhenMappings;->$EnumSwitchMapping$0:[I

    return-void
.end method
