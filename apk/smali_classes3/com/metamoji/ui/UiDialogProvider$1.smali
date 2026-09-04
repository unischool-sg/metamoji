.class synthetic Lcom/metamoji/ui/UiDialogProvider$1;
.super Ljava/lang/Object;
.source "UiDialogProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/UiDialogProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$metamoji$cm$ICmUIProvider$ResourceId:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 43
    invoke-static {}, Lcom/metamoji/cm/ICmUIProvider$ResourceId;->values()[Lcom/metamoji/cm/ICmUIProvider$ResourceId;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/metamoji/ui/UiDialogProvider$1;->$SwitchMap$com$metamoji$cm$ICmUIProvider$ResourceId:[I

    :try_start_0
    sget-object v1, Lcom/metamoji/cm/ICmUIProvider$ResourceId;->OK:Lcom/metamoji/cm/ICmUIProvider$ResourceId;

    invoke-virtual {v1}, Lcom/metamoji/cm/ICmUIProvider$ResourceId;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/metamoji/ui/UiDialogProvider$1;->$SwitchMap$com$metamoji$cm$ICmUIProvider$ResourceId:[I

    sget-object v1, Lcom/metamoji/cm/ICmUIProvider$ResourceId;->CANCEL:Lcom/metamoji/cm/ICmUIProvider$ResourceId;

    invoke-virtual {v1}, Lcom/metamoji/cm/ICmUIProvider$ResourceId;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
