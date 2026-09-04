.class synthetic Lcom/metamoji/ui/cabinet/ShareViewFragment$21;
.super Ljava/lang/Object;
.source "ShareViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/cabinet/ShareViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$metamoji$ui$PopupCommand:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 2498
    invoke-static {}, Lcom/metamoji/ui/PopupCommand;->values()[Lcom/metamoji/ui/PopupCommand;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/metamoji/ui/cabinet/ShareViewFragment$21;->$SwitchMap$com$metamoji$ui$PopupCommand:[I

    :try_start_0
    sget-object v1, Lcom/metamoji/ui/PopupCommand;->SHAREVIEW_PRIVATEFLAG_OFF:Lcom/metamoji/ui/PopupCommand;

    invoke-virtual {v1}, Lcom/metamoji/ui/PopupCommand;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/metamoji/ui/cabinet/ShareViewFragment$21;->$SwitchMap$com$metamoji$ui$PopupCommand:[I

    sget-object v1, Lcom/metamoji/ui/PopupCommand;->SHAREVIEW_PRIVATEFLAG_ON:Lcom/metamoji/ui/PopupCommand;

    invoke-virtual {v1}, Lcom/metamoji/ui/PopupCommand;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/metamoji/ui/cabinet/ShareViewFragment$21;->$SwitchMap$com$metamoji$ui$PopupCommand:[I

    sget-object v1, Lcom/metamoji/ui/PopupCommand;->SHAREVIEW_ROOMINFO:Lcom/metamoji/ui/PopupCommand;

    invoke-virtual {v1}, Lcom/metamoji/ui/PopupCommand;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lcom/metamoji/ui/cabinet/ShareViewFragment$21;->$SwitchMap$com$metamoji$ui$PopupCommand:[I

    sget-object v1, Lcom/metamoji/ui/PopupCommand;->SHAREVIEW_ENABLE_WRITEACCESS:Lcom/metamoji/ui/PopupCommand;

    invoke-virtual {v1}, Lcom/metamoji/ui/PopupCommand;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v0, Lcom/metamoji/ui/cabinet/ShareViewFragment$21;->$SwitchMap$com$metamoji$ui$PopupCommand:[I

    sget-object v1, Lcom/metamoji/ui/PopupCommand;->SHAREVIEW_DISABLE_WRITEACCESS:Lcom/metamoji/ui/PopupCommand;

    invoke-virtual {v1}, Lcom/metamoji/ui/PopupCommand;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v0, Lcom/metamoji/ui/cabinet/ShareViewFragment$21;->$SwitchMap$com$metamoji$ui$PopupCommand:[I

    sget-object v1, Lcom/metamoji/ui/PopupCommand;->SHAREVIEW_SHARENOTE_PATH:Lcom/metamoji/ui/PopupCommand;

    invoke-virtual {v1}, Lcom/metamoji/ui/PopupCommand;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    return-void
.end method
