.class synthetic Lcom/metamoji/ui/library/notetemplate/LibraryNoteTemplatePartView$2;
.super Ljava/lang/Object;
.source "LibraryNoteTemplatePartView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/library/notetemplate/LibraryNoteTemplatePartView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$metamoji$lb$LbConstants$LbPageType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 231
    invoke-static {}, Lcom/metamoji/lb/LbConstants$LbPageType;->values()[Lcom/metamoji/lb/LbConstants$LbPageType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/metamoji/ui/library/notetemplate/LibraryNoteTemplatePartView$2;->$SwitchMap$com$metamoji$lb$LbConstants$LbPageType:[I

    :try_start_0
    sget-object v1, Lcom/metamoji/lb/LbConstants$LbPageType;->LbPageType_HISTORY:Lcom/metamoji/lb/LbConstants$LbPageType;

    invoke-virtual {v1}, Lcom/metamoji/lb/LbConstants$LbPageType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/metamoji/ui/library/notetemplate/LibraryNoteTemplatePartView$2;->$SwitchMap$com$metamoji$lb$LbConstants$LbPageType:[I

    sget-object v1, Lcom/metamoji/lb/LbConstants$LbPageType;->LbPageType_BOOKMARK:Lcom/metamoji/lb/LbConstants$LbPageType;

    invoke-virtual {v1}, Lcom/metamoji/lb/LbConstants$LbPageType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
