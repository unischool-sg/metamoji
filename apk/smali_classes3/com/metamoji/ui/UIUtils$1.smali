.class synthetic Lcom/metamoji/ui/UIUtils$1;
.super Ljava/lang/Object;
.source "UIUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/UIUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$metamoji$un$draw2$library$utility$example$DrUtShapeExampleType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 437
    invoke-static {}, Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExampleType;->values()[Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExampleType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/metamoji/ui/UIUtils$1;->$SwitchMap$com$metamoji$un$draw2$library$utility$example$DrUtShapeExampleType:[I

    :try_start_0
    sget-object v1, Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExampleType;->FLOWCHART_ARROW_1:Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExampleType;

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExampleType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/metamoji/ui/UIUtils$1;->$SwitchMap$com$metamoji$un$draw2$library$utility$example$DrUtShapeExampleType:[I

    sget-object v1, Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExampleType;->FLOWCHART_ARROW_2:Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExampleType;

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExampleType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/metamoji/ui/UIUtils$1;->$SwitchMap$com$metamoji$un$draw2$library$utility$example$DrUtShapeExampleType:[I

    sget-object v1, Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExampleType;->FLOWCHART_ARROW_3:Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExampleType;

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExampleType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lcom/metamoji/ui/UIUtils$1;->$SwitchMap$com$metamoji$un$draw2$library$utility$example$DrUtShapeExampleType:[I

    sget-object v1, Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExampleType;->FLOWCHART_ARROW_4:Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExampleType;

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExampleType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method
