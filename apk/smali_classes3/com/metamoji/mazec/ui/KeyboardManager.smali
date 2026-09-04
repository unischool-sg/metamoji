.class public Lcom/metamoji/mazec/ui/KeyboardManager;
.super Ljava/lang/Object;
.source "KeyboardManager.java"

# interfaces
.implements Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/mazec/ui/KeyboardManager$KeyCombination;,
        Lcom/metamoji/mazec/ui/KeyboardManager$OnKeyboardListener;,
        Lcom/metamoji/mazec/ui/KeyboardManager$KeyAction;
    }
.end annotation


# static fields
.field private static final ACTION_CANCEL:Ljava/lang/String; = "cancel"

.field private static final ACTION_COMMIT:Ljava/lang/String; = "commit"

.field private static final ACTION_COMMIT_CLAUSE:Ljava/lang/String; = "commit-clause"

.field private static final ACTION_DELETE_NEXT_CHAR_FROM_COMPOSING_TEXT:Ljava/lang/String; = "delete-next-char-from-composing-text"

.field private static final ACTION_DELETE_PREV_CHAR_FROM_COMPOSING_TEXT:Ljava/lang/String; = "delete-prev-char-from-composing-text"

.field private static final ACTION_EXPAND_CLAUSE:Ljava/lang/String; = "expand-clause"

.field private static final ACTION_INSERT_FULLWIDTH_SPACE:Ljava/lang/String; = "insert-fullwidth-space"

.field private static final ACTION_INSERT_SPACE:Ljava/lang/String; = "insert-space"

.field private static final ACTION_NEXT_CANDIDATE:Ljava/lang/String; = "next-candidate"

.field private static final ACTION_SHRINK_CLAUSE:Ljava/lang/String; = "shrink-clause"

.field private static final ACTION_TOGGLE_CONVERSION:Ljava/lang/String; = "toggle-conversion"

.field private static final ATTR_ACTION:Ljava/lang/String; = "action"

.field private static final ATTR_STATE:Ljava/lang/String; = "state"

.field private static final DELAY_MENUBTNS_POPUP:I = 0x96

.field public static final KEYBOARD_COUNT:I = 0x7

.field public static final KEYBOARD_DATETIME_DONE:I = 0x5

.field public static final KEYBOARD_DATETIME_NEXT:I = 0x4

.field public static final KEYBOARD_MONTH:I = 0x6

.field public static final KEYBOARD_NUMBERS_AND_SYMBOLS_1:I = 0x2

.field public static final KEYBOARD_NUMBERS_AND_SYMBOLS_2:I = 0x3

.field public static final KEYBOARD_QWERTY:I = 0x0

.field public static final KEYBOARD_SYMBOLS:I = 0x1

.field private static final KEYCODE_CONV:I = -0x66

.field private static final KEYCODE_CONVERT_MODE:I = -0x6d

.field private static final KEYCODE_ENTER:I = -0x65

.field private static final KEYCODE_HIDE:I = -0x6b

.field private static final KEYCODE_LEFT:I = -0x6a

.field private static final KEYCODE_MENU:I = -0x67

.field private static final KEYCODE_MONTH_APR:I = -0xcb

.field private static final KEYCODE_MONTH_AUG:I = -0xcf

.field private static final KEYCODE_MONTH_DEC:I = -0xd3

.field private static final KEYCODE_MONTH_FEB:I = -0xc9

.field private static final KEYCODE_MONTH_JAN:I = -0xc8

.field private static final KEYCODE_MONTH_JUL:I = -0xce

.field private static final KEYCODE_MONTH_JUN:I = -0xcd

.field private static final KEYCODE_MONTH_MAR:I = -0xca

.field private static final KEYCODE_MONTH_MAY:I = -0xcc

.field private static final KEYCODE_MONTH_NOV:I = -0xd2

.field private static final KEYCODE_MONTH_OCT:I = -0xd1

.field private static final KEYCODE_MONTH_SEP:I = -0xd0

.field private static final KEYCODE_NEXT:I = -0x6e

.field private static final KEYCODE_RIGHT:I = -0x69

.field private static final KEYCODE_SPACE:I = -0x68

.field private static final KEYCODE_STROKE_MODE:I = -0x6c

.field private static final KEY_NAME_CODE_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final LIMIT_INPUT_NUMBER:I = 0x1e

.field private static final META_ALT_MASK:I = 0x2

.field private static final META_CTRL_MASK:I = 0x1000

.field private static final META_MASK:I = 0x1003

.field private static final META_SHIFT_MASK:I = 0x1

.field private static final MOD_ALT_STR:Ljava/lang/String; = "ALT"

.field private static final MOD_CTRL_STR:Ljava/lang/String; = "CTRL"

.field private static final MOD_SHIFT_STR:Ljava/lang/String; = "SHIFT"

.field private static final SPAN_EXACT_BGCOLOR_HL:Landroid/text/style/CharacterStyle;

.field private static final SPAN_REMAIN_BGCOLOR_HL:Landroid/text/style/CharacterStyle;

.field private static final SPAN_TEXTCOLOR:Landroid/text/style/CharacterStyle;

.field private static final SPAN_UNDERLINE:Landroid/text/style/CharacterStyle;

.field private static final STATE_COMPOSING:Ljava/lang/String; = "composing"

.field private static final STATE_NEUTRAL:Ljava/lang/String; = "neutral"

.field private static final TAG_BINDING:Ljava/lang/String; = "binding"

.field private static final TAG_KEYMAP:Ljava/lang/String; = "key-map"


# instance fields
.field private mActionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/metamoji/mazec/ui/KeyboardManager$KeyAction;",
            ">;"
        }
    .end annotation
.end field

.field private mAudioManager:Landroid/media/AudioManager;

.field private mCnvCandidatesBar:Lcom/metamoji/mazec/ui/CnvCandidatesBar;

.field private mComposingText:Lcom/metamoji/mazec/ComposingText;

.field private mConvKey:Landroid/inputmethodservice/Keyboard$Key;

.field private mConvKeyIndex:I

.field private mConversionMode:Z

.field protected mDisplayText:Landroid/text/SpannableStringBuilder;

.field private mKeyboardType:I

.field private mKeyboardView:Landroid/inputmethodservice/KeyboardView;

.field private mKeyboardViews:[Landroid/inputmethodservice/KeyboardView;

.field private mKeyboardWidth:I

.field private mKeymapComposing:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/metamoji/mazec/ui/KeyboardManager$KeyCombination;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mKeymapNeutral:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/metamoji/mazec/ui/KeyboardManager$KeyCombination;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMazecEventListener:Lcom/metamoji/mazec/MazecEventListener;

.field private mOnKeyboardListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/mazec/ui/KeyboardManager$OnKeyboardListener;",
            ">;"
        }
    .end annotation
.end field

.field protected mPreConverter:Lcom/metamoji/mazec/converter/LetterConverter;


# direct methods
.method static bridge synthetic -$$Nest$fgetmComposingText(Lcom/metamoji/mazec/ui/KeyboardManager;)Lcom/metamoji/mazec/ComposingText;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/mazec/ui/KeyboardManager;->mComposingText:Lcom/metamoji/mazec/ComposingText;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmConversionMode(Lcom/metamoji/mazec/ui/KeyboardManager;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/metamoji/mazec/ui/KeyboardManager;->mConversionMode:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$msetKeyboard(Lcom/metamoji/mazec/ui/KeyboardManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/mazec/ui/KeyboardManager;->setKeyboard()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 99
    new-instance v0, Landroid/text/style/BackgroundColorSpan;

    const v1, -0x993256

    invoke-direct {v0, v1}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    sput-object v0, Lcom/metamoji/mazec/ui/KeyboardManager;->SPAN_EXACT_BGCOLOR_HL:Landroid/text/style/CharacterStyle;

    .line 101
    new-instance v0, Landroid/text/style/BackgroundColorSpan;

    const v1, -0xf0001

    invoke-direct {v0, v1}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    sput-object v0, Lcom/metamoji/mazec/ui/KeyboardManager;->SPAN_REMAIN_BGCOLOR_HL:Landroid/text/style/CharacterStyle;

    .line 103
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    const/high16 v1, -0x1000000

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    sput-object v0, Lcom/metamoji/mazec/ui/KeyboardManager;->SPAN_TEXTCOLOR:Landroid/text/style/CharacterStyle;

    .line 105
    new-instance v0, Landroid/text/style/UnderlineSpan;

    invoke-direct {v0}, Landroid/text/style/UnderlineSpan;-><init>()V

    sput-object v0, Lcom/metamoji/mazec/ui/KeyboardManager;->SPAN_UNDERLINE:Landroid/text/style/CharacterStyle;

    .line 110
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/16 v1, 0x3e

    .line 111
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "SPACE"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x43

    .line 112
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "DEL"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x70

    .line 113
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "FORWARD_DEL"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x15

    .line 114
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "DPAD_LEFT"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x16

    .line 115
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "DPAD_RIGHT"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x14

    .line 116
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "DPAD_DOWN"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x13

    .line 117
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "DPAD_UP"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x42

    .line 118
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ENTER"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x6f

    .line 119
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ESCAPE"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/metamoji/mazec/ui/KeyboardManager;->KEY_NAME_CODE_MAP:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/inputmethodservice/KeyboardView;Lcom/metamoji/mazec/ui/CnvCandidatesBar;)V
    .locals 3

    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 197
    iput-object v0, p0, Lcom/metamoji/mazec/ui/KeyboardManager;->mConvKey:Landroid/inputmethodservice/Keyboard$Key;

    const/4 v1, -0x1

    .line 199
    iput v1, p0, Lcom/metamoji/mazec/ui/KeyboardManager;->mConvKeyIndex:I

    const/4 v1, 0x0

    .line 204
    iput v1, p0, Lcom/metamoji/mazec/ui/KeyboardManager;->mKeyboardType:I

    .line 209
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/metamoji/mazec/ui/KeyboardManager;->mOnKeyboardListeners:Ljava/util/ArrayList;

    .line 214
    iput-boolean v1, p0, Lcom/metamoji/mazec/ui/KeyboardManager;->mConversionMode:Z

    .line 218
    iput-object v0, p0, Lcom/metamoji/mazec/ui/KeyboardManager;->mPreConverter:Lcom/metamoji/mazec/converter/LetterConverter;

    .line 222
    new-instance v0, Lcom/metamoji/mazec/ui/KeyboardManager$1;

    invoke-direct {v0, p0}, Lcom/metamoji/mazec/ui/KeyboardManager$1;-><init>(Lcom/metamoji/mazec/ui/KeyboardManager;)V

    iput-object v0, p0, Lcom/metamoji/mazec/ui/KeyboardManager;->mMazecEventListener:Lcom/metamoji/mazec/MazecEventListener;

    .line 235
    iput-object p2, p0, Lcom/metamoji/mazec/ui/KeyboardManager;->mCnvCandidatesBar:Lcom/metamoji/mazec/ui/CnvCandidatesBar;

    .line 237
    invoke-static {}, Lcom/metamoji/mazec/MazecIms;->getInstance()Lcom/metamoji/mazec/MazecIms;

    move-result-object p2

    const-string v0, "audio"

    invoke-virtual {p2, v0}, Lcom/metamoji/mazec/MazecIms;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/media/AudioManager;

    iput-object p2, p0, Lcom/metamoji/mazec/ui/KeyboardManager;->mAudioManager:Landroid/media/AudioManager;

    .line 239
    new-instance p2, Lcom/metamoji/mazec/ComposingText;

    invoke-direct {p2}, Lcom/metamoji/mazec/ComposingText;-><init>()V

    iput-object p2, p0, Lcom/metamoji/mazec/ui/KeyboardManager;->mComposingText:Lcom/metamoji/mazec/ComposingText;

    .line 240
    new-instance p2, Lcom/metamoji/mazec/converter/JAJP/Roman2KanaConverter;

    invoke-direct {p2}, Lcom/metamoji/mazec/converter/JAJP/Roman2KanaConverter;-><init>()V

    iput-object p2, p0, Lcom/metamoji/mazec/ui/KeyboardManager;->mPreConverter:Lcom/metamoji/mazec/converter/LetterConverter;

    .line 241
    new-instance p2, Landroid/text/SpannableStringBuilder;

    invoke-direct {p2}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object p2, p0, Lcom/metamoji/mazec/ui/KeyboardManager;->mDisplayText:Landroid/text/SpannableStringBuilder;

    const/4 p2, 0x7

    .line 243
    new-array v0, p2, [Landroid/inputmethodservice/KeyboardView;

    iput-object v0, p0, Lcom/metamoji/mazec/ui/KeyboardManager;->mKeyboardViews:[Landroid/inputmethodservice/KeyboardView;

    :goto_0
    if-ge v1, p2, :cond_0

    .line 245
    iget-object v0, p0, Lcom/metamoji/mazec/ui/KeyboardManager;->mKeyboardViews:[Landroid/inputmethodservice/KeyboardView;

    aput-object p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 249
    :cond_0
    invoke-virtual {p0, p1}, Lcom/metamoji/mazec/ui/KeyboardManager;->setKeyboardView(Landroid/inputmethodservice/KeyboardView;)V

    return-void
.end method

.method private createActionMap()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/metamoji/mazec/ui/KeyboardManager$KeyAction;",
            ">;"
        }
    .end annotation

    .line 300
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 301
    new-instance v1, Lcom/metamoji/mazec/ui/KeyboardManager$2;

    invoke-direct {v1, p0}, Lcom/metamoji/mazec/ui/KeyboardManager$2;-><init>(Lcom/metamoji/mazec/ui/KeyboardManager;)V

    const-string/jumbo v2, "toggle-conversion"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    new-instance v1, Lcom/metamoji/mazec/ui/KeyboardManager$3;

    invoke-direct {v1, p0}, Lcom/metamoji/mazec/ui/KeyboardManager$3;-><init>(Lcom/metamoji/mazec/ui/KeyboardManager;)V

    const-string v2, "insert-fullwidth-space"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    new-instance v1, Lcom/metamoji/mazec/ui/KeyboardManager$4;

    invoke-direct {v1, p0}, Lcom/metamoji/mazec/ui/KeyboardManager$4;-><init>(Lcom/metamoji/mazec/ui/KeyboardManager;)V

    const-string v2, "insert-space"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    new-instance v1, Lcom/metamoji/mazec/ui/KeyboardManager$5;

    invoke-direct {v1, p0}, Lcom/metamoji/mazec/ui/KeyboardManager$5;-><init>(Lcom/metamoji/mazec/ui/KeyboardManager;)V

    const-string v2, "next-candidate"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    new-instance v1, Lcom/metamoji/mazec/ui/KeyboardManager$6;

    invoke-direct {v1, p0}, Lcom/metamoji/mazec/ui/KeyboardManager$6;-><init>(Lcom/metamoji/mazec/ui/KeyboardManager;)V

    const-string v2, "delete-prev-char-from-composing-text"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    new-instance v1, Lcom/metamoji/mazec/ui/KeyboardManager$7;

    invoke-direct {v1, p0}, Lcom/metamoji/mazec/ui/KeyboardManager$7;-><init>(Lcom/metamoji/mazec/ui/KeyboardManager;)V

    const-string v2, "delete-next-char-from-composing-text"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    new-instance v1, Lcom/metamoji/mazec/ui/KeyboardManager$8;

    invoke-direct {v1, p0}, Lcom/metamoji/mazec/ui/KeyboardManager$8;-><init>(Lcom/metamoji/mazec/ui/KeyboardManager;)V

    const-string/jumbo v2, "shrink-clause"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    new-instance v1, Lcom/metamoji/mazec/ui/KeyboardManager$9;

    invoke-direct {v1, p0}, Lcom/metamoji/mazec/ui/KeyboardManager$9;-><init>(Lcom/metamoji/mazec/ui/KeyboardManager;)V

    const-string v2, "expand-clause"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    new-instance v1, Lcom/metamoji/mazec/ui/KeyboardManager$10;

    invoke-direct {v1, p0}, Lcom/metamoji/mazec/ui/KeyboardManager$10;-><init>(Lcom/metamoji/mazec/ui/KeyboardManager;)V

    const-string v2, "commit-clause"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    new-instance v1, Lcom/metamoji/mazec/ui/KeyboardManager$11;

    invoke-direct {v1, p0}, Lcom/metamoji/mazec/ui/KeyboardManager$11;-><init>(Lcom/metamoji/mazec/ui/KeyboardManager;)V

    const-string v2, "commit"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    new-instance v1, Lcom/metamoji/mazec/ui/KeyboardManager$12;

    invoke-direct {v1, p0}, Lcom/metamoji/mazec/ui/KeyboardManager$12;-><init>(Lcom/metamoji/mazec/ui/KeyboardManager;)V

    const-string v2, "cancel"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private excecAction(Ljava/util/Map;Lcom/metamoji/mazec/ui/KeyboardManager$KeyCombination;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/metamoji/mazec/ui/KeyboardManager$KeyCombination;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/metamoji/mazec/ui/KeyboardManager$KeyCombination;",
            ")Z"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1275
    iget-object v0, p0, Lcom/metamoji/mazec/ui/KeyboardManager;->mActionMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 1276
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 1278
    iget-object p2, p0, Lcom/metamoji/mazec/ui/KeyboardManager;->mActionMap:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/mazec/ui/KeyboardManager$KeyAction;

    if-eqz p1, :cond_0

    .line 1280
    invoke-interface {p1}, Lcom/metamoji/mazec/ui/KeyboardManager$KeyAction;->execute()Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private loadKeymaps()V
    .locals 6

    .line 407
    const-string v0, "Mazec"

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 408
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 411
    :try_start_0
    invoke-static {}, Lcom/metamoji/mazec/MazecIms;->getInstance()Lcom/metamoji/mazec/MazecIms;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/mazec/MazecIms;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string/jumbo v4, "xml.key_maps"

    invoke-static {v4}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v3
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 417
    :goto_0
    :try_start_1
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_3

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    goto :goto_1

    .line 423
    :cond_0
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "key-map"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 424
    const-string/jumbo v4, "state"

    invoke-direct {p0, v3, v4}, Lcom/metamoji/mazec/ui/KeyboardManager;->parseAttribute(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 425
    const-string v5, "neutral"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 426
    invoke-direct {p0, v1, v3}, Lcom/metamoji/mazec/ui/KeyboardManager;->parseKeymap(Ljava/util/Map;Landroid/content/res/XmlResourceParser;)V

    goto :goto_1

    .line 427
    :cond_1
    const-string v5, "composing"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 428
    invoke-direct {p0, v2, v3}, Lcom/metamoji/mazec/ui/KeyboardManager;->parseKeymap(Ljava/util/Map;Landroid/content/res/XmlResourceParser;)V

    .line 438
    :cond_2
    :goto_1
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 443
    :cond_3
    :goto_2
    :try_start_2
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    :catchall_0
    move-exception v4

    goto :goto_3

    :catch_0
    move-exception v4

    .line 441
    :try_start_3
    const-string v5, "key map parse failed"

    invoke-static {v0, v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 443
    :goto_3
    :try_start_4
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    .line 444
    throw v4
    :try_end_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception v3

    .line 446
    const-string v4, "key map resource not found"

    invoke-static {v0, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 499
    :goto_4
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/mazec/ui/KeyboardManager;->mKeymapNeutral:Ljava/util/Map;

    .line 500
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/mazec/ui/KeyboardManager;->mKeymapComposing:Ljava/util/Map;

    return-void
.end method

.method private parseAttribute(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 543
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getAttributeCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 545
    invoke-interface {p1, v1}, Landroid/content/res/XmlResourceParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v2

    .line 546
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 547
    invoke-interface {p1, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private parseKey(Ljava/lang/String;)Lcom/metamoji/mazec/ui/KeyboardManager$KeyCombination;
    .locals 8

    .line 556
    const-string v0, "\\+"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 558
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v1, v0, :cond_5

    aget-object v4, p1, v1

    .line 559
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 561
    const-string v5, "ALT"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    or-int/lit8 v3, v3, 0x2

    goto :goto_1

    .line 566
    :cond_0
    const-string v5, "CTRL"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    or-int/lit16 v3, v3, 0x1000

    goto :goto_1

    .line 571
    :cond_1
    const-string v5, "SHIFT"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    or-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    .line 576
    const-string v6, "Mazec"

    if-eqz v2, :cond_3

    .line 577
    const-string p1, "invalid key \'%s\'"

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5

    .line 581
    :cond_3
    sget-object v2, Lcom/metamoji/mazec/ui/KeyboardManager;->KEY_NAME_CODE_MAP:Ljava/util/Map;

    invoke-interface {v2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 582
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_1

    .line 587
    :cond_4
    :try_start_0
    invoke-static {v4}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 589
    const-string v0, "invalid keycode"

    invoke-static {v6, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v5

    .line 593
    :cond_5
    new-instance p1, Lcom/metamoji/mazec/ui/KeyboardManager$KeyCombination;

    invoke-direct {p1, v2, v3}, Lcom/metamoji/mazec/ui/KeyboardManager$KeyCombination;-><init>(II)V

    return-object p1
.end method

.method private parseKeymap(Ljava/util/Map;Landroid/content/res/XmlResourceParser;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/metamoji/mazec/ui/KeyboardManager$KeyCombination;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/res/XmlResourceParser;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 505
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 506
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "key-map"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 509
    :goto_0
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_3

    if-eq v0, v1, :cond_1

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    goto :goto_1

    .line 528
    :cond_0
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    .line 515
    :cond_1
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "binding"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 516
    const-string v0, "action"

    invoke-direct {p0, p2, v0}, Lcom/metamoji/mazec/ui/KeyboardManager;->parseAttribute(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 517
    iget-object v3, p0, Lcom/metamoji/mazec/ui/KeyboardManager;->mActionMap:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 518
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/metamoji/mazec/ui/KeyboardManager;->parseKey(Ljava/lang/String;)Lcom/metamoji/mazec/ui/KeyboardManager$KeyCombination;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 520
    invoke-interface {p1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 537
    :cond_2
    :goto_1
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->next()I

    goto :goto_0

    :cond_3
    :goto_2
    return-void
.end method

.method private setKeyboard()V
    .locals 11

    .line 718
    iget-object v0, p0, Lcom/metamoji/mazec/ui/KeyboardManager;->mKeyboardViews:[Landroid/inputmethodservice/KeyboardView;

    iget v1, p0, Lcom/metamoji/mazec/ui/KeyboardManager;->mKeyboardType:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/metamoji/mazec/ui/KeyboardManager;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    .line 720
    invoke-virtual {v0}, Landroid/inputmethodservice/KeyboardView;->isShifted()Z

    move-result v0

    .line 725
    iget v1, p0, Lcom/metamoji/mazec/ui/KeyboardManager;->mKeyboardType:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v1, :pswitch_data_0

    const/4 v1, -0x1

    :goto_0
    move v4, v3

    goto :goto_3

    .line 748
    :pswitch_0
    const-string/jumbo v1, "xml.keyboard_month"

    invoke-static {v1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v1

    goto :goto_1

    .line 744
    :pswitch_1
    const-string/jumbo v1, "xml.keyboard_datetime_2"

    invoke-static {v1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v1

    goto :goto_1

    .line 740
    :pswitch_2
    const-string/jumbo v1, "xml.keyboard_datetime_1"

    invoke-static {v1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v1

    :goto_1
    move v4, v2

    goto :goto_3

    .line 737
    :pswitch_3
    const-string/jumbo v1, "xml.keyboard_numbers_and_symbols_2"

    invoke-static {v1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    .line 734
    :pswitch_4
    const-string/jumbo v1, "xml.keyboard_numbers_and_symbols_1"

    invoke-static {v1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    .line 731
    :pswitch_5
    const-string/jumbo v1, "xml.keyboard_symbols"

    invoke-static {v1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :pswitch_6
    if-eqz v0, :cond_0

    .line 727
    const-string/jumbo v1, "xml.keyboard_qwerty_shift"

    goto :goto_2

    :cond_0
    const-string/jumbo v1, "xml.keyboard_qwerty"

    :goto_2
    invoke-static {v1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    .line 753
    :goto_3
    sget-object v5, Lcom/metamoji/mazec/BuildConfig;->DEVICE_VENDOR:Lcom/metamoji/mazec/BuildOption$DeviceVendor;

    sget-object v6, Lcom/metamoji/mazec/BuildOption$DeviceVendor;->AMAZON:Lcom/metamoji/mazec/BuildOption$DeviceVendor;

    const/4 v7, 0x0

    if-ne v5, v6, :cond_1

    iget v5, p0, Lcom/metamoji/mazec/ui/KeyboardManager;->mKeyboardWidth:I

    if-lez v5, :cond_1

    .line 754
    invoke-static {}, Lcom/metamoji/mazec/MazecIms;->getInstance()Lcom/metamoji/mazec/MazecIms;

    move-result-object v5

    invoke-virtual {v5}, Lcom/metamoji/mazec/MazecIms;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    .line 758
    :try_start_0
    const-class v6, Landroid/inputmethodservice/Keyboard;

    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/Class;

    const-class v9, Landroid/content/Context;

    aput-object v9, v8, v2

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v3

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v9, 0x2

    aput-object v3, v8, v9

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v9, 0x3

    aput-object v3, v8, v9

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v9, 0x4

    aput-object v3, v8, v9

    invoke-virtual {v6, v8}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 759
    invoke-static {}, Lcom/metamoji/mazec/MazecIms;->getInstance()Lcom/metamoji/mazec/MazecIms;

    move-result-object v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget v10, p0, Lcom/metamoji/mazec/ui/KeyboardManager;->mKeyboardWidth:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iget v5, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v6, v8, v9, v10, v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/inputmethodservice/Keyboard;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    :cond_1
    move-object v3, v7

    :goto_4
    if-nez v3, :cond_2

    .line 766
    new-instance v3, Landroid/inputmethodservice/Keyboard;

    invoke-static {}, Lcom/metamoji/mazec/MazecIms;->getInstance()Lcom/metamoji/mazec/MazecIms;

    move-result-object v5

    invoke-direct {v3, v5, v1}, Landroid/inputmethodservice/Keyboard;-><init>(Landroid/content/Context;I)V

    .line 768
    :cond_2
    invoke-virtual {v3}, Landroid/inputmethodservice/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v1

    .line 769
    iput-object v7, p0, Lcom/metamoji/mazec/ui/KeyboardManager;->mConvKey:Landroid/inputmethodservice/Keyboard$Key;

    .line 771
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v5, v2

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/inputmethodservice/Keyboard$Key;

    .line 772
    iget-object v7, v6, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v7, v7, v2

    const/16 v8, -0x66

    if-ne v7, v8, :cond_3

    .line 773
    iput-object v6, p0, Lcom/metamoji/mazec/ui/KeyboardManager;->mConvKey:Landroid/inputmethodservice/Keyboard$Key;

    .line 775
    iput v5, p0, Lcom/metamoji/mazec/ui/KeyboardManager;->mConvKeyIndex:I

    goto :goto_6

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 789
    :cond_4
    :goto_6
    iget-object v1, p0, Lcom/metamoji/mazec/ui/KeyboardManager;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v1, v3}, Landroid/inputmethodservice/KeyboardView;->setKeyboard(Landroid/inputmethodservice/Keyboard;)V

    .line 790
    iget-object v1, p0, Lcom/metamoji/mazec/ui/KeyboardManager;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v1, v0}, Landroid/inputmethodservice/KeyboardView;->setShifted(Z)Z

    .line 791
    iget-object v0, p0, Lcom/metamoji/mazec/ui/KeyboardManager;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v0, v4}, Landroid/inputmethodservice/KeyboardView;->setPreviewEnabled(Z)V

    .line 793
    iget-boolean v0, p0, Lcom/metamoji/mazec/ui/KeyboardManager;->mConversionMode:Z

    invoke-virtual {p0, v0}, Lcom/metamoji/mazec/ui/KeyboardManager;->setConversionMode(Z)V

    move v0, v2

    .line 798
    :goto_7
    iget-object v1, p0, Lcom/metamoji/mazec/ui/KeyboardManager;->mKeyboardViews:[Landroid/inputmethodservice/KeyboardView;

    const/4 v3, 0x7

    if-ge v0, v3, :cond_5

    .line 796
    aget-object v1, v1, v0

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/inputmethodservice/KeyboardView;->setVisibility(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 798
    :cond_5
    iget v0, p0, Lcom/metamoji/mazec/ui/KeyboardManager;->mKeyboardType:I

    aget-object v0, v1, v0

    invoke-virtual {v0, v2}, Landroid/inputmethodservice/KeyboardView;->setVisibility(I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private toggleShift()V
    .locals 2

    .line 675
    iget-object v0, p0, Lcom/metamoji/mazec/ui/KeyboardManager;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v0}, Landroid/inputmethodservice/KeyboardView;->isShifted()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/inputmethodservice/KeyboardView;->setShifted(Z)Z

    .line 677
    invoke-direct {p0}, Lcom/metamoji/mazec/ui/KeyboardManager;->setKeyboard()V

    return-void
.end method

.method private updateComposingText()V
    .locals 7

    .line 1077
    iget-object v0, p0, Lcom/metamoji/mazec/ui/KeyboardManager;->mDisplayText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 1078
    iget-object v0, p0, Lcom/metamoji/mazec/ui/KeyboardManager;->mComposingText:Lcom/metamoji/mazec/ComposingText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/metamoji/mazec/ComposingText;->size(I)I

    move-result v0

    const/4 v2, 0x0

    if-lez v0, :cond_1

    .line 1081
    iget-object v3, p0, Lcom/metamoji/mazec/ui/KeyboardManager;->mDisplayText:Landroid/text/SpannableStringBuilder;

    iget-object v4, p0, Lcom/metamoji/mazec/ui/KeyboardManager;->mComposingText:Lcom/metamoji/mazec/ComposingText;

    invoke-virtual {v4, v1}, Lcom/metamoji/mazec/ComposingText;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1084
    iget-object v3, p0, Lcom/metamoji/mazec/ui/KeyboardManager;->mComposingText:Lcom/metamoji/mazec/ComposingText;

    invoke-virtual {v3, v1}, Lcom/metamoji/mazec/ComposingText;->getCursor(I)I

    move-result v3

    const/16 v4, 0x21

    if-lez v3, :cond_0

    if-ge v3, v0, :cond_0

    .line 1086
    iget-object v5, p0, Lcom/metamoji/mazec/ui/KeyboardManager;->mDisplayText:Landroid/text/SpannableStringBuilder;

    sget-object v6, Lcom/metamoji/mazec/ui/KeyboardManager;->SPAN_EXACT_BGCOLOR_HL:Landroid/text/style/CharacterStyle;

    invoke-virtual {v5, v6, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1087
    iget-object v5, p0, Lcom/metamoji/mazec/ui/KeyboardManager;->mDisplayText:Landroid/text/SpannableStringBuilder;

    sget-object v6, Lcom/metamoji/mazec/ui/KeyboardManager;->SPAN_REMAIN_BGCOLOR_HL:Landroid/text/style/CharacterStyle;

    invoke-virtual {v5, v6, v3, v0, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1089
    iget-object v5, p0, Lcom/metamoji/mazec/ui/KeyboardManager;->mDisplayText:Landroid/text/SpannableStringBuilder;

    sget-object v6, Lcom/metamoji/mazec/ui/KeyboardManager;->SPAN_TEXTCOLOR:Landroid/text/style/CharacterStyle;

    invoke-virtual {v5, v6, v2, v0, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1092
    :cond_0
    iget-object v5, p0, Lcom/metamoji/mazec/ui/KeyboardManager;->mDisplayText:Landroid/text/SpannableStringBuilder;

    sget-object v6, Lcom/metamoji/mazec/ui/KeyboardManager;->SPAN_UNDERLINE:Landroid/text/style/CharacterStyle;

    invoke-virtual {v5, v6, v2, v0, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    :cond_1
    move v3, v2

    .line 1095
    :goto_0
    invoke-static {}, Lcom/metamoji/mazec/MazecIms;->getInstance()Lcom/metamoji/mazec/MazecIms;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/mazec/MazecIms;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    iget-object v4, p0, Lcom/metamoji/mazec/ui/KeyboardManager;->mDisplayText:Landroid/text/SpannableStringBuilder;

    if-nez v3, :cond_2

    move v1, v2

    :cond_2
    invoke-interface {v0, v4, v1}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    return-void
.end method


# virtual methods
.method public addOnKeyboardListener(Lcom/metamoji/mazec/ui/KeyboardManager$OnKeyboardListener;)V
    .locals 1

    .line 964
    iget-object v0, p0, Lcom/metamoji/mazec/ui/KeyboardManager;->mOnKeyboardListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected cancelConversion()Z
    .locals 2

    .line 1152
    iget-boolean v0, p0, Lcom/metamoji/mazec/ui/KeyboardManager;->mConversionMode:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/metamoji/mazec/ui/KeyboardManager;->mComposingText:Lcom/metamoji/mazec/ComposingText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/metamoji/mazec/ComposingText;->size(I)I

    move-result v0

    if-lez v0, :cond_1

    .line 1153
    iget-object v0, p0, Lcom/metamoji/mazec/ui/KeyboardManager;->mCnvCandidatesBar:Lcom/metamoji/mazec/ui/CnvCandidatesBar;

    invoke-virtual {v0}, Lcom/metamoji/mazec/ui/CnvCandidatesBar;->closeCandidatesView()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1154
    invoke-virtual {p0, v1}, Lcom/metamoji/mazec/ui/KeyboardManager;->clear(Z)V

    :cond_0
    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public clear(Z)V
    .locals 3

    .line 1162
    iget-object v0, p0, Lcom/metamoji/mazec/ui/KeyboardManager;->mComposingText:Lcom/metamoji/mazec/ComposingText;

    invoke-virtual {v0}, Lcom/metamoji/mazec/ComposingText;->clear()V

    .line 1164
    invoke-static {}, Lcom/metamoji/mazec/MazecIms;->getInstance()Lcom/metamoji/mazec/MazecIms;

    move-result-object v0

    const/16 v1, 0x15

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/metamoji/mazec/MazecIms;->onEvent(ILjava/lang/Object;Ljava/lang/Object;)Z

    if-eqz p1, :cond_0

    .line 1166
    invoke-direct {p0}, Lcom/metamoji/mazec/ui/KeyboardManager;->updateComposingText()V

    :cond_0
    return-void
.end method

.method public clearCurrentClause()V
    .locals 4

    .line 1176
    iget-object v0, p0, Lcom/metamoji/mazec/ui/KeyboardManager;->mComposingText:Lcom/metamoji/mazec/ComposingText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/metamoji/mazec/ComposingText;->size(I)I

    move-result v0

    .line 1177
    iget-object v2, p0, Lcom/metamoji/mazec/ui/KeyboardManager;->mComposingText:Lcom/metamoji/mazec/ComposingText;

    invoke-virtual {v2, v1}, Lcom/metamoji/mazec/ComposingText;->getCursor(I)I

    move-result v2

    if-gt v0, v2, :cond_0

    .line 1179
    invoke-virtual {p0, v1}, Lcom/metamoji/mazec/ui/KeyboardManager;->clear(Z)V

    return-void

    :cond_0
    if-lez v2, :cond_1

    .line 1184
    iget-object v0, p0, Lcom/metamoji/mazec/ui/KeyboardManager;->mComposingText:Lcom/metamoji/mazec/ComposingText;

    const/4 v3, 0x0

    sub-int/2addr v2, v1

    invoke-virtual {v0, v1, v3, v2}, Lcom/metamoji/mazec/ComposingText;->deleteStrSegment(III)V

    .line 1185
    iget-object v0, p0, Lcom/metamoji/mazec/ui/KeyboardManager;->mComposingText:Lcom/metamoji/mazec/ComposingText;

    invoke-virtual {v0, v1}, Lcom/metamoji/mazec/ComposingText;->size(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/mazec/ComposingText;->setCursor(II)I

    .line 1186
    invoke-direct {p0}, Lcom/metamoji/mazec/ui/KeyboardManager;->updateComposingText()V

    .line 1187
    invoke-virtual {p0}, Lcom/metamoji/mazec/ui/KeyboardManager;->convertComposingText()V

    :cond_1
    return-void
.end method

.method public clearOnKeyboardListeners()V
    .locals 1

    .line 980
    iget-object v0, p0, Lcom/metamoji/mazec/ui/KeyboardManager;->mOnKeyboardListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method protected commitConversionText()Z
    .locals 5

    .line 1122
    iget-boolean v0, p0, Lcom/metamoji/mazec/ui/KeyboardManager;->mConversionMode:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/metamoji/mazec/ui/KeyboardManager;->mComposingText:Lcom/metamoji/mazec/ComposingText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/metamoji/mazec/ComposingText;->size(I)I

    move-result v0

    if-lez v0, :cond_1

    .line 1123
    iget-object v0, p0, Lcom/metamoji/mazec/ui/KeyboardManager;->mCnvCandidatesBar:Lcom/metamoji/mazec/ui/CnvCandidatesBar;

    invoke-virtual {v0}, Lcom/metamoji/mazec/ui/CnvCandidatesBar;->commitCurrentCandidate()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1124
    iget-object v0, p0, Lcom/metamoji/mazec/ui/KeyboardManager;->mComposingText:Lcom/metamoji/mazec/ComposingText;

    invoke-virtual {v0, v1}, Lcom/metamoji/mazec/ComposingText;->toString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1125
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 1126
    invoke-virtual {p0, v1}, Lcom/metamoji/mazec/ui/KeyboardManager;->clear(Z)V

    .line 1128
    invoke-static {}, Lcom/metamoji/mazec/MazecIms;->getInstance()Lcom/metamoji/mazec/MazecIms;

    move-result-object v2

    const/16 v3, 0xb

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v4}, Lcom/metamoji/mazec/MazecIms;->onEvent(ILjava/lang/Object;Ljava/lang/Object;)Z

    :cond_0
    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method protected commitCurrentClause()Z
    .locals 5

    .line 1137
    iget-boolean v0, p0, Lcom/metamoji/mazec/ui/KeyboardManager;->mConversionMode:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/metamoji/mazec/ui/KeyboardManager;->mComposingText:Lcom/metamoji/mazec/ComposingText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/metamoji/mazec/ComposingText;->size(I)I

    move-result v0

    if-lez v0, :cond_1

    .line 1138
    iget-object v0, p0, Lcom/metamoji/mazec/ui/KeyboardManager;->mCnvCandidatesBar:Lcom/metamoji/mazec/ui/CnvCandidatesBar;

    invoke-virtual {v0}, Lcom/metamoji/mazec/ui/CnvCandidatesBar;->commitCurrentCandidate()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1139
    invoke-virtual {p0}, Lcom/metamoji/mazec/ui/KeyboardManager;->getCurretnClauseString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1140
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 1142
    invoke-static {}, Lcom/metamoji/mazec/MazecIms;->getInstance()Lcom/metamoji/mazec/MazecIms;

    move-result-object v2

    const/16 v3, 0xb

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v4}, Lcom/metamoji/mazec/MazecIms;->onEvent(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 1143
    invoke-virtual {p0}, Lcom/metamoji/mazec/ui/KeyboardManager;->clearCurrentClause()V

    :cond_0
    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method protected commitResString(Ljava/lang/String;)Z
    .locals 3

    .line 935
    invoke-static {}, Lcom/metamoji/mazec/MazecIms;->getInstance()Lcom/metamoji/mazec/MazecIms;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "string."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/metamoji/mazec/MazecIms;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 936
    iget-boolean v0, p0, Lcom/metamoji/mazec/ui/KeyboardManager;->mConversionMode:Z

    if-eqz v0, :cond_0

    .line 937
    invoke-virtual {p0, p1}, Lcom/metamoji/mazec/ui/KeyboardManager;->insertStringToComposingText(Ljava/lang/String;)V

    goto :goto_0

    .line 939
    :cond_0
    invoke-static {}, Lcom/metamoji/mazec/MazecIms;->getInstance()Lcom/metamoji/mazec/MazecIms;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/metamoji/mazec/MazecIms;->commitText(Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method protected convertComposingText()V
    .locals 4

    .line 1102
    invoke-virtual {p0}, Lcom/metamoji/mazec/ui/KeyboardManager;->getCurretnClauseString()Ljava/lang/String;

    move-result-object v0

    .line 1103
    iget-object v1, p0, Lcom/metamoji/mazec/ui/KeyboardManager;->mComposingText:Lcom/metamoji/mazec/ComposingText;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/metamoji/mazec/ComposingText;->size(I)I

    move-result v1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 1104
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 1105
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v3, v1, :cond_0

    .line 1107
    invoke-static {}, Lcom/metamoji/mazec/MazecIms;->getInstance()Lcom/metamoji/mazec/MazecIms;

    move-result-object v1

    const/16 v3, 0xe

    invoke-virtual {v1, v3, v0, v2}, Lcom/metamoji/mazec/MazecIms;->onEvent(ILjava/lang/Object;Ljava/lang/Object;)Z

    return-void

    .line 1110
    :cond_0
    invoke-static {}, Lcom/metamoji/mazec/MazecIms;->getInstance()Lcom/metamoji/mazec/MazecIms;

    move-result-object v1

    const/16 v3, 0xd

    invoke-virtual {v1, v3, v0, v2}, Lcom/metamoji/mazec/MazecIms;->onEvent(ILjava/lang/Object;Ljava/lang/Object;)Z

    return-void

    .line 1113
    :cond_1
    invoke-static {}, Lcom/metamoji/mazec/MazecIms;->getInstance()Lcom/metamoji/mazec/MazecIms;

    move-result-object v0

    .line 1116
    invoke-virtual {v0}, Lcom/metamoji/mazec/MazecIms;->cancelConversion()V

    const/16 v1, 0x15

    .line 1117
    invoke-virtual {v0, v1, v2, v2}, Lcom/metamoji/mazec/MazecIms;->onEvent(ILjava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method

.method protected deleteCharacterFromComposingText(Z)Z
    .locals 2

    .line 1021
    iget-boolean v0, p0, Lcom/metamoji/mazec/ui/KeyboardManager;->mConversionMode:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/metamoji/mazec/ui/KeyboardManager;->mComposingText:Lcom/metamoji/mazec/ComposingText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/metamoji/mazec/ComposingText;->size(I)I

    move-result v0

    if-lez v0, :cond_2

    .line 1022
    iget-object v0, p0, Lcom/metamoji/mazec/ui/KeyboardManager;->mComposingText:Lcom/metamoji/mazec/ComposingText;

    invoke-virtual {v0, v1, p1}, Lcom/metamoji/mazec/ComposingText;->delete(IZ)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1023
    iget-object p1, p0, Lcom/metamoji/mazec/ui/KeyboardManager;->mComposingText:Lcom/metamoji/mazec/ComposingText;

    invoke-virtual {p1, v1}, Lcom/metamoji/mazec/ComposingText;->size(I)I

    move-result p1

    if-lez p1, :cond_0

    .line 1024
    invoke-direct {p0}, Lcom/metamoji/mazec/ui/KeyboardManager;->updateComposingText()V

    .line 1025
    invoke-virtual {p0}, Lcom/metamoji/mazec/ui/KeyboardManager;->convertComposingText()V

    goto :goto_0

    .line 1027
    :cond_0
    invoke-virtual {p0, v1}, Lcom/metamoji/mazec/ui/KeyboardManager;->clear(Z)V

    :cond_1
    :goto_0
    return v1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method protected expandComposingClause()Z
    .locals 2

    .line 1063
    iget-boolean v0, p0, Lcom/metamoji/mazec/ui/KeyboardManager;->mConversionMode:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/metamoji/mazec/ui/KeyboardManager;->mComposingText:Lcom/metamoji/mazec/ComposingText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/metamoji/mazec/ComposingText;->size(I)I

    move-result v0

    if-lez v0, :cond_1

    .line 1064
    iget-object v0, p0, Lcom/metamoji/mazec/ui/KeyboardManager;->mComposingText:Lcom/metamoji/mazec/ComposingText;

    invoke-virtual {v0, v1, v1}, Lcom/metamoji/mazec/ComposingText;->moveCursor(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1065
    invoke-direct {p0}, Lcom/metamoji/mazec/ui/KeyboardManager;->updateComposingText()V

    .line 1066
    invoke-virtual {p0}, Lcom/metamoji/mazec/ui/KeyboardManager;->convertComposingText()V

    :cond_0
    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public getConversionMode()Z
    .locals 1

    .line 681
    iget-boolean v0, p0, Lcom/metamoji/mazec/ui/KeyboardManager;->mConversionMode:Z

    return v0
.end method

.method protected getCurretnClauseString()Ljava/lang/String;
    .locals 4

    .line 1171
    iget-object v0, p0, Lcom/metamoji/mazec/ui/KeyboardManager;->mComposingText:Lcom/metamoji/mazec/ComposingText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/metamoji/mazec/ComposingText;->getCursor(I)I

    move-result v0

    .line 1172
    iget-object v2, p0, Lcom/metamoji/mazec/ui/KeyboardManager;->mComposingText:Lcom/metamoji/mazec/ComposingText;

    const/4 v3, 0x0

    sub-int/2addr v0, v1

    invoke-virtual {v2, v1, v3, v0}, Lcom/metamoji/mazec/ComposingText;->toString(III)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected handleKeyEvent(II)Z
    .locals 1

    .line 1259
    new-instance v0, Lcom/metamoji/mazec/ui/KeyboardManager$KeyCombination;

    invoke-direct {v0, p1, p2}, Lcom/metamoji/mazec/ui/KeyboardManager$KeyCombination;-><init>(II)V

    .line 1260
    iget-object p1, p0, Lcom/metamoji/mazec/ui/KeyboardManager;->mComposingText:Lcom/metamoji/mazec/ComposingText;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/metamoji/mazec/ComposingText;->size(I)I

    move-result p1

    if-lez p1, :cond_0

    .line 1261
    iget-object p1, p0, Lcom/metamoji/mazec/ui/KeyboardManager;->mKeymapComposing:Ljava/util/Map;

    invoke-direct {p0, p1, v0}, Lcom/metamoji/mazec/ui/KeyboardManager;->excecAction(Ljava/util/Map;Lcom/metamoji/mazec/ui/KeyboardManager$KeyCombination;)Z

    move-result p1

    if-eqz p1, :cond_0

    return p2

    .line 1265
    :cond_0
    iget-object p1, p0, Lcom/metamoji/mazec/ui/KeyboardManager;->mKeymapNeutral:Ljava/util/Map;

    invoke-direct {p0, p1, v0}, Lcom/metamoji/mazec/ui/KeyboardManager;->excecAction(Ljava/util/Map;Lcom/metamoji/mazec/ui/KeyboardManager$KeyCombination;)Z

    move-result p1

    return p1
.end method

.method public hideKeyboard()V
    .locals 2

    .line 644
    invoke-virtual {p0}, Lcom/metamoji/mazec/ui/KeyboardManager;->commitConversionText()Z

    .line 646
    iget-object v0, p0, Lcom/metamoji/mazec/ui/KeyboardManager;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/inputmethodservice/KeyboardView;->setVisibility(I)V

    return-void
.end method

.method protected insertStringToComposingText(Ljava/lang/String;)V
    .locals 3

    .line 999
    iget-object v0, p0, Lcom/metamoji/mazec/ui/KeyboardManager;->mCnvCandidatesBar:Lcom/metamoji/mazec/ui/CnvCandidatesBar;

    invoke-virtual {v0}, Lcom/metamoji/mazec/ui/CnvCandidatesBar;->hasCurrentCandidate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1000
    iget-object v0, p0, Lcom/metamoji/mazec/ui/KeyboardManager;->mCnvCandidatesBar:Lcom/metamoji/mazec/ui/CnvCandidatesBar;

    invoke-virtual {v0}, Lcom/metamoji/mazec/ui/CnvCandidatesBar;->commitCurrentCandidate()Z

    .line 1003
    :cond_0
    iget-object v0, p0, Lcom/metamoji/mazec/ui/KeyboardManager;->mComposingText:Lcom/metamoji/mazec/ComposingText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/metamoji/mazec/ComposingText;->size(I)I

    move-result v0

    const/16 v2, 0x1e

    if-lt v0, v2, :cond_1

    return-void

    .line 1007
    :cond_1
    new-instance v0, Lcom/metamoji/mazec/StrSegment;

    invoke-direct {v0, p1}, Lcom/metamoji/mazec/StrSegment;-><init>(Ljava/lang/String;)V

    .line 1008
    iget-object p1, p0, Lcom/metamoji/mazec/ui/KeyboardManager;->mComposingText:Lcom/metamoji/mazec/ComposingText;

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1, v0}, Lcom/metamoji/mazec/ComposingText;->insertStrSegment(IILcom/metamoji/mazec/StrSegment;)V

    .line 1009
    iget-object p1, p0, Lcom/metamoji/mazec/ui/KeyboardManager;->mPreConverter:Lcom/metamoji/mazec/converter/LetterConverter;

    iget-object v0, p0, Lcom/metamoji/mazec/ui/KeyboardManager;->mComposingText:Lcom/metamoji/mazec/ComposingText;

    invoke-interface {p1, v0}, Lcom/metamoji/mazec/converter/LetterConverter;->convert(Lcom/metamoji/mazec/ComposingText;)Z

    .line 1011
    invoke-direct {p0}, Lcom/metamoji/mazec/ui/KeyboardManager;->updateComposingText()V

    .line 1012
    invoke-virtual {p0}, Lcom/metamoji/mazec/ui/KeyboardManager;->convertComposingText()V

    return-void
.end method

.method public keyPress(I)V
    .locals 3

    const/4 v0, 0x0

    .line 653
    invoke-virtual {p0, p1, v0}, Lcom/metamoji/mazec/ui/KeyboardManager;->handleKeyEvent(II)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x3e

    const/4 v1, 0x0

    if-eq p1, v0, :cond_0

    .line 662
    invoke-static {}, Lcom/metamoji/mazec/MazecIms;->getInstance()Lcom/metamoji/mazec/MazecIms;

    move-result-object v0

    const/16 v2, 0x9

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v2, p1, v1}, Lcom/metamoji/mazec/MazecIms;->onEvent(ILjava/lang/Object;Ljava/lang/Object;)Z

    return-void

    .line 657
    :cond_0
    invoke-static {}, Lcom/metamoji/mazec/MazecIms;->getInstance()Lcom/metamoji/mazec/MazecIms;

    move-result-object p1

    const/16 v0, 0xb

    const-string v2, " "

    invoke-virtual {p1, v0, v2, v1}, Lcom/metamoji/mazec/MazecIms;->onEvent(ILjava/lang/Object;Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public onKey(I[I)V
    .locals 4

    const/4 v0, -0x5

    const/4 v1, 0x1

    if-eq p1, v0, :cond_7

    const/4 v0, -0x2

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq p1, v0, :cond_2

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    if-ltz p1, :cond_6

    .line 916
    new-instance v0, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([C)V

    .line 917
    iget-boolean v2, p0, Lcom/metamoji/mazec/ui/KeyboardManager;->mConversionMode:Z

    if-eqz v2, :cond_0

    .line 918
    invoke-virtual {p0, v0}, Lcom/metamoji/mazec/ui/KeyboardManager;->insertStringToComposingText(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 920
    :cond_0
    invoke-static {}, Lcom/metamoji/mazec/MazecIms;->getInstance()Lcom/metamoji/mazec/MazecIms;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/metamoji/mazec/MazecIms;->commitText(Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_0
    const/16 v0, 0x42

    .line 818
    invoke-virtual {p0, v0}, Lcom/metamoji/mazec/ui/KeyboardManager;->keyPress(I)V

    goto/16 :goto_2

    .line 829
    :pswitch_1
    invoke-virtual {p0}, Lcom/metamoji/mazec/ui/KeyboardManager;->toggleConversionMode()V

    goto/16 :goto_1

    .line 833
    :pswitch_2
    invoke-static {}, Lcom/metamoji/mazec/MazecIms;->getInstance()Lcom/metamoji/mazec/MazecIms;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/mazec/MazecIms;->showSettings()V

    goto/16 :goto_1

    :pswitch_3
    const/16 v0, 0x3e

    .line 849
    invoke-virtual {p0, v0}, Lcom/metamoji/mazec/ui/KeyboardManager;->keyPress(I)V

    goto/16 :goto_2

    .line 837
    :pswitch_4
    invoke-static {}, Lcom/metamoji/mazec/MazecIms;->getInstance()Lcom/metamoji/mazec/MazecIms;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/metamoji/mazec/MazecIms;->requestHideSelf(I)V

    goto/16 :goto_1

    .line 841
    :pswitch_5
    invoke-static {}, Lcom/metamoji/mazec/MazecIms;->getInstance()Lcom/metamoji/mazec/MazecIms;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/metamoji/mazec/MazecIms;->setInputMode(I)V

    goto/16 :goto_1

    .line 845
    :pswitch_6
    invoke-static {}, Lcom/metamoji/mazec/MazecIms;->getInstance()Lcom/metamoji/mazec/MazecIms;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/metamoji/mazec/MazecIms;->setInputMode(I)V

    goto/16 :goto_1

    :pswitch_7
    const/16 v0, 0x3d

    .line 824
    invoke-virtual {p0, v0}, Lcom/metamoji/mazec/ui/KeyboardManager;->keyPress(I)V

    goto/16 :goto_2

    .line 878
    :pswitch_8
    const-string v0, "key_str_january"

    invoke-virtual {p0, v0}, Lcom/metamoji/mazec/ui/KeyboardManager;->commitResString(Ljava/lang/String;)Z

    move-result v1

    goto/16 :goto_2

    .line 881
    :pswitch_9
    const-string v0, "key_str_februrary"

    invoke-virtual {p0, v0}, Lcom/metamoji/mazec/ui/KeyboardManager;->commitResString(Ljava/lang/String;)Z

    move-result v1

    goto/16 :goto_2

    .line 884
    :pswitch_a
    const-string v0, "key_str_march"

    invoke-virtual {p0, v0}, Lcom/metamoji/mazec/ui/KeyboardManager;->commitResString(Ljava/lang/String;)Z

    move-result v1

    goto/16 :goto_2

    .line 887
    :pswitch_b
    const-string v0, "key_str_april"

    invoke-virtual {p0, v0}, Lcom/metamoji/mazec/ui/KeyboardManager;->commitResString(Ljava/lang/String;)Z

    move-result v1

    goto :goto_2

    .line 890
    :pswitch_c
    const-string v0, "key_str_may"

    invoke-virtual {p0, v0}, Lcom/metamoji/mazec/ui/KeyboardManager;->commitResString(Ljava/lang/String;)Z

    move-result v1

    goto :goto_2

    .line 893
    :pswitch_d
    const-string v0, "key_str_june"

    invoke-virtual {p0, v0}, Lcom/metamoji/mazec/ui/KeyboardManager;->commitResString(Ljava/lang/String;)Z

    move-result v1

    goto :goto_2

    .line 896
    :pswitch_e
    const-string v0, "key_str_july"

    invoke-virtual {p0, v0}, Lcom/metamoji/mazec/ui/KeyboardManager;->commitResString(Ljava/lang/String;)Z

    move-result v1

    goto :goto_2

    .line 899
    :pswitch_f
    const-string v0, "key_str_august"

    invoke-virtual {p0, v0}, Lcom/metamoji/mazec/ui/KeyboardManager;->commitResString(Ljava/lang/String;)Z

    move-result v1

    goto :goto_2

    .line 902
    :pswitch_10
    const-string v0, "key_str_september"

    invoke-virtual {p0, v0}, Lcom/metamoji/mazec/ui/KeyboardManager;->commitResString(Ljava/lang/String;)Z

    move-result v1

    goto :goto_2

    .line 905
    :pswitch_11
    const-string v0, "key_str_october"

    invoke-virtual {p0, v0}, Lcom/metamoji/mazec/ui/KeyboardManager;->commitResString(Ljava/lang/String;)Z

    move-result v1

    goto :goto_2

    .line 908
    :pswitch_12
    const-string v0, "key_str_november"

    invoke-virtual {p0, v0}, Lcom/metamoji/mazec/ui/KeyboardManager;->commitResString(Ljava/lang/String;)Z

    move-result v1

    goto :goto_2

    .line 911
    :pswitch_13
    const-string v0, "key_str_december"

    invoke-virtual {p0, v0}, Lcom/metamoji/mazec/ui/KeyboardManager;->commitResString(Ljava/lang/String;)Z

    move-result v1

    goto :goto_2

    .line 809
    :cond_1
    invoke-direct {p0}, Lcom/metamoji/mazec/ui/KeyboardManager;->toggleShift()V

    goto :goto_1

    .line 854
    :cond_2
    iget v0, p0, Lcom/metamoji/mazec/ui/KeyboardManager;->mKeyboardType:I

    if-nez v0, :cond_3

    .line 855
    iput v1, p0, Lcom/metamoji/mazec/ui/KeyboardManager;->mKeyboardType:I

    goto :goto_0

    :cond_3
    const/4 v1, 0x3

    if-ne v0, v2, :cond_4

    .line 857
    iput v1, p0, Lcom/metamoji/mazec/ui/KeyboardManager;->mKeyboardType:I

    goto :goto_0

    :cond_4
    if-ne v0, v1, :cond_5

    .line 859
    iput v2, p0, Lcom/metamoji/mazec/ui/KeyboardManager;->mKeyboardType:I

    goto :goto_0

    .line 861
    :cond_5
    iput v3, p0, Lcom/metamoji/mazec/ui/KeyboardManager;->mKeyboardType:I

    .line 863
    :goto_0
    invoke-direct {p0}, Lcom/metamoji/mazec/ui/KeyboardManager;->setKeyboard()V

    :cond_6
    :goto_1
    move v1, v3

    goto :goto_2

    :cond_7
    const/16 v0, 0x43

    .line 813
    invoke-virtual {p0, v0}, Lcom/metamoji/mazec/ui/KeyboardManager;->keyPress(I)V

    :goto_2
    if-eqz v1, :cond_8

    .line 928
    iget-object v0, p0, Lcom/metamoji/mazec/ui/KeyboardManager;->mOnKeyboardListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/mazec/ui/KeyboardManager$OnKeyboardListener;

    .line 929
    invoke-interface {v1, p1, p2}, Lcom/metamoji/mazec/ui/KeyboardManager$OnKeyboardListener;->onKey(I[I)V

    goto :goto_3

    :cond_8
    return-void

    :pswitch_data_0
    .packed-switch -0xd3
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x6e
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch -0x68
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onKeyDown(Landroid/view/KeyEvent;)Z
    .locals 3

    .line 1219
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eq v0, v1, :cond_3

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    const/16 v1, 0x18

    if-eq v0, v1, :cond_3

    const/16 v1, 0x19

    if-eq v0, v1, :cond_3

    const/16 v1, 0x52

    if-eq v0, v1, :cond_3

    .line 1229
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v1

    and-int/lit16 v1, v1, 0x1003

    invoke-virtual {p0, v0, v1}, Lcom/metamoji/mazec/ui/KeyboardManager;->handleKeyEvent(II)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 1233
    :cond_0
    iget-boolean v0, p0, Lcom/metamoji/mazec/ui/KeyboardManager;->mConversionMode:Z

    if-nez v0, :cond_1

    return v2

    .line 1237
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isPrintingKey()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1238
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result p1

    if-eqz p1, :cond_2

    .line 1240
    new-instance v0, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Character;->toChars(I)[C

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {p0, v0}, Lcom/metamoji/mazec/ui/KeyboardManager;->insertStringToComposingText(Ljava/lang/String;)V

    return v1

    .line 1245
    :cond_2
    iget-object p1, p0, Lcom/metamoji/mazec/ui/KeyboardManager;->mComposingText:Lcom/metamoji/mazec/ComposingText;

    invoke-virtual {p1, v1}, Lcom/metamoji/mazec/ComposingText;->size(I)I

    move-result p1

    if-lez p1, :cond_3

    return v1

    :cond_3
    return v2
.end method

.method public onPress(I)V
    .locals 1

    .line 948
    iget-object p1, p0, Lcom/metamoji/mazec/ui/KeyboardManager;->mAudioManager:Landroid/media/AudioManager;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->playSoundEffect(I)V

    return-void
.end method

.method public onRelease(I)V
    .locals 0

    return-void
.end method

.method onStarting()V
    .locals 4

    .line 1288
    invoke-static {}, Lcom/metamoji/mazec/MazecIms;->getInstance()Lcom/metamoji/mazec/MazecIms;

    move-result-object v0

    .line 1289
    invoke-virtual {v0}, Lcom/metamoji/mazec/MazecIms;->getEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v0

    .line 1291
    invoke-static {v0}, Lcom/metamoji/mazec/MazecIms;->isInputAlphaNum(Landroid/view/inputmethod/EditorInfo;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 1292
    invoke-virtual {p0, v2}, Lcom/metamoji/mazec/ui/KeyboardManager;->setKeyboardType(I)V

    .line 1293
    invoke-virtual {p0, v2}, Lcom/metamoji/mazec/ui/KeyboardManager;->setConversionMode(Z)V

    return-void

    .line 1294
    :cond_0
    invoke-static {v0}, Lcom/metamoji/mazec/MazecIms;->isInputDateTime(Landroid/view/inputmethod/EditorInfo;)Z

    move-result v1

    const/4 v3, 0x6

    if-eqz v1, :cond_2

    .line 1295
    iget v0, v0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    and-int/lit16 v0, v0, 0xff

    if-ne v3, v0, :cond_1

    const/4 v0, 0x5

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    .line 1296
    :goto_0
    invoke-virtual {p0, v0}, Lcom/metamoji/mazec/ui/KeyboardManager;->setKeyboardType(I)V

    .line 1300
    invoke-virtual {p0, v2}, Lcom/metamoji/mazec/ui/KeyboardManager;->setConversionMode(Z)V

    return-void

    .line 1301
    :cond_2
    invoke-static {v0}, Lcom/metamoji/mazec/MazecIms;->isInputMonth(Landroid/view/inputmethod/EditorInfo;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1302
    invoke-virtual {p0, v3}, Lcom/metamoji/mazec/ui/KeyboardManager;->setKeyboardType(I)V

    .line 1303
    invoke-virtual {p0, v2}, Lcom/metamoji/mazec/ui/KeyboardManager;->setConversionMode(Z)V

    return-void

    .line 1305
    :cond_3
    sget-object v0, Lcom/metamoji/mazec/BuildConfig;->DEVICE_VENDOR:Lcom/metamoji/mazec/BuildOption$DeviceVendor;

    sget-object v1, Lcom/metamoji/mazec/BuildOption$DeviceVendor;->SAMSUNG:Lcom/metamoji/mazec/BuildOption$DeviceVendor;

    if-ne v0, v1, :cond_4

    const/4 v0, 0x2

    .line 1306
    invoke-virtual {p0, v0}, Lcom/metamoji/mazec/ui/KeyboardManager;->setKeyboardType(I)V

    .line 1313
    :cond_4
    invoke-virtual {p0, v2}, Lcom/metamoji/mazec/ui/KeyboardManager;->setConversionMode(Z)V

    return-void
.end method

.method public onText(Ljava/lang/CharSequence;)V
    .locals 0

    return-void
.end method

.method onUIModeChanged(I)V
    .locals 3

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 1320
    invoke-virtual {p0}, Lcom/metamoji/mazec/ui/KeyboardManager;->showKeyboard()V

    const/4 p1, 0x0

    .line 1321
    invoke-virtual {p0, p1}, Lcom/metamoji/mazec/ui/KeyboardManager;->clear(Z)V

    .line 1329
    sget-object p1, Lcom/metamoji/mazec/BuildConfig;->DEVICE_VENDOR:Lcom/metamoji/mazec/BuildOption$DeviceVendor;

    sget-object v0, Lcom/metamoji/mazec/BuildOption$DeviceVendor;->AMAZON:Lcom/metamoji/mazec/BuildOption$DeviceVendor;

    if-eq p1, v0, :cond_0

    .line 1331
    invoke-static {}, Lcom/metamoji/mazec/MazecIms;->getInstance()Lcom/metamoji/mazec/MazecIms;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/mazec/MazecIms;->getHandler()Landroid/os/Handler;

    move-result-object p1

    .line 1332
    new-instance v0, Lcom/metamoji/mazec/ui/KeyboardManager$13;

    invoke-direct {v0, p0}, Lcom/metamoji/mazec/ui/KeyboardManager$13;-><init>(Lcom/metamoji/mazec/ui/KeyboardManager;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void

    .line 1340
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/mazec/ui/KeyboardManager;->hideKeyboard()V

    return-void
.end method

.method public onUpdateSelection(IIII)V
    .locals 0

    .line 1192
    iget-boolean p2, p0, Lcom/metamoji/mazec/ui/KeyboardManager;->mConversionMode:Z

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    if-gez p3, :cond_1

    if-gez p4, :cond_1

    const/4 p1, 0x0

    .line 1197
    invoke-virtual {p0, p1}, Lcom/metamoji/mazec/ui/KeyboardManager;->clear(Z)V

    return-void

    :cond_1
    if-eq p1, p4, :cond_4

    if-ge p1, p3, :cond_2

    move p1, p3

    goto :goto_0

    :cond_2
    if-ge p4, p1, :cond_3

    move p1, p4

    .line 1207
    :cond_3
    :goto_0
    iget-object p2, p0, Lcom/metamoji/mazec/ui/KeyboardManager;->mComposingText:Lcom/metamoji/mazec/ComposingText;

    const/4 p4, 0x1

    sub-int/2addr p1, p3

    invoke-virtual {p2, p4, p1}, Lcom/metamoji/mazec/ComposingText;->setCursor(II)I

    .line 1208
    invoke-direct {p0}, Lcom/metamoji/mazec/ui/KeyboardManager;->updateComposingText()V

    .line 1209
    invoke-virtual {p0}, Lcom/metamoji/mazec/ui/KeyboardManager;->convertComposingText()V

    :cond_4
    :goto_1
    return-void
.end method

.method public registerAsLister(Lcom/metamoji/mazec/MazecIms;)V
    .locals 1

    .line 1345
    iget-object v0, p0, Lcom/metamoji/mazec/ui/KeyboardManager;->mMazecEventListener:Lcom/metamoji/mazec/MazecEventListener;

    invoke-virtual {p1, v0}, Lcom/metamoji/mazec/MazecIms;->addMazecEventListener(Lcom/metamoji/mazec/MazecEventListener;)V

    return-void
.end method

.method public removeOnKeyboardListener(Lcom/metamoji/mazec/ui/KeyboardManager$OnKeyboardListener;)V
    .locals 1

    .line 972
    iget-object v0, p0, Lcom/metamoji/mazec/ui/KeyboardManager;->mOnKeyboardListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method protected selectNextCandidate()Z
    .locals 2

    .line 1036
    iget-boolean v0, p0, Lcom/metamoji/mazec/ui/KeyboardManager;->mConversionMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/metamoji/mazec/ui/KeyboardManager;->mComposingText:Lcom/metamoji/mazec/ComposingText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/metamoji/mazec/ComposingText;->size(I)I

    move-result v0

    if-lez v0, :cond_0

    .line 1037
    iget-object v0, p0, Lcom/metamoji/mazec/ui/KeyboardManager;->mCnvCandidatesBar:Lcom/metamoji/mazec/ui/CnvCandidatesBar;

    invoke-virtual {v0}, Lcom/metamoji/mazec/ui/CnvCandidatesBar;->setCurrentCandidateToNext()V

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setConversionMode(Z)V
    .locals 0

    const/4 p1, 0x0

    .line 687
    iput-boolean p1, p0, Lcom/metamoji/mazec/ui/KeyboardManager;->mConversionMode:Z

    return-void
.end method

.method public setKeyboardType(I)V
    .locals 1

    .line 618
    iput p1, p0, Lcom/metamoji/mazec/ui/KeyboardManager;->mKeyboardType:I

    .line 619
    iget-object p1, p0, Lcom/metamoji/mazec/ui/KeyboardManager;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/inputmethodservice/KeyboardView;->setShifted(Z)Z

    .line 620
    invoke-direct {p0}, Lcom/metamoji/mazec/ui/KeyboardManager;->setKeyboard()V

    return-void
.end method

.method public setKeyboardView(Landroid/inputmethodservice/KeyboardView;)V
    .locals 0

    .line 601
    iput-object p1, p0, Lcom/metamoji/mazec/ui/KeyboardManager;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    .line 602
    invoke-virtual {p1, p0}, Landroid/inputmethodservice/KeyboardView;->setOnKeyboardActionListener(Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;)V

    .line 603
    invoke-direct {p0}, Lcom/metamoji/mazec/ui/KeyboardManager;->setKeyboard()V

    return-void
.end method

.method public setKeyboardView(Landroid/inputmethodservice/KeyboardView;I)V
    .locals 1

    .line 608
    iget-object v0, p0, Lcom/metamoji/mazec/ui/KeyboardManager;->mKeyboardViews:[Landroid/inputmethodservice/KeyboardView;

    aput-object p1, v0, p2

    .line 609
    invoke-virtual {p1, p0}, Landroid/inputmethodservice/KeyboardView;->setOnKeyboardActionListener(Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;)V

    return-void
.end method

.method public setKeyboardWidth(I)V
    .locals 1

    .line 1354
    iget v0, p0, Lcom/metamoji/mazec/ui/KeyboardManager;->mKeyboardWidth:I

    if-eq v0, p1, :cond_0

    if-lez p1, :cond_0

    .line 1355
    iput p1, p0, Lcom/metamoji/mazec/ui/KeyboardManager;->mKeyboardWidth:I

    .line 1356
    invoke-virtual {p0}, Lcom/metamoji/mazec/ui/KeyboardManager;->updateKeyboard()V

    :cond_0
    return-void
.end method

.method public showKeyboard()V
    .locals 2

    .line 635
    iget-object v0, p0, Lcom/metamoji/mazec/ui/KeyboardManager;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/inputmethodservice/KeyboardView;->setVisibility(I)V

    .line 636
    iget-object v0, p0, Lcom/metamoji/mazec/ui/KeyboardManager;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v0}, Landroid/inputmethodservice/KeyboardView;->invalidateAllKeys()V

    .line 637
    iget-boolean v0, p0, Lcom/metamoji/mazec/ui/KeyboardManager;->mConversionMode:Z

    invoke-virtual {p0, v0}, Lcom/metamoji/mazec/ui/KeyboardManager;->setConversionMode(Z)V

    return-void
.end method

.method protected shrinkComposingClause()Z
    .locals 3

    .line 1048
    iget-boolean v0, p0, Lcom/metamoji/mazec/ui/KeyboardManager;->mConversionMode:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/metamoji/mazec/ui/KeyboardManager;->mComposingText:Lcom/metamoji/mazec/ComposingText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/metamoji/mazec/ComposingText;->size(I)I

    move-result v0

    if-lez v0, :cond_1

    .line 1049
    iget-object v0, p0, Lcom/metamoji/mazec/ui/KeyboardManager;->mComposingText:Lcom/metamoji/mazec/ComposingText;

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/mazec/ComposingText;->moveCursor(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1050
    invoke-direct {p0}, Lcom/metamoji/mazec/ui/KeyboardManager;->updateComposingText()V

    .line 1051
    invoke-virtual {p0}, Lcom/metamoji/mazec/ui/KeyboardManager;->convertComposingText()V

    :cond_0
    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public swipeDown()V
    .locals 0

    return-void
.end method

.method public swipeLeft()V
    .locals 0

    return-void
.end method

.method public swipeRight()V
    .locals 0

    return-void
.end method

.method public swipeUp()V
    .locals 0

    return-void
.end method

.method public toggleConversionMode()V
    .locals 1

    .line 710
    iget-boolean v0, p0, Lcom/metamoji/mazec/ui/KeyboardManager;->mConversionMode:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/metamoji/mazec/ui/KeyboardManager;->setConversionMode(Z)V

    return-void
.end method

.method public unregisterFromLister(Lcom/metamoji/mazec/MazecIms;)V
    .locals 1

    .line 1349
    iget-object v0, p0, Lcom/metamoji/mazec/ui/KeyboardManager;->mMazecEventListener:Lcom/metamoji/mazec/MazecEventListener;

    invoke-virtual {p1, v0}, Lcom/metamoji/mazec/MazecIms;->removeMazecEventListener(Lcom/metamoji/mazec/MazecEventListener;)V

    return-void
.end method

.method public updateKeyboard()V
    .locals 0

    .line 628
    invoke-direct {p0}, Lcom/metamoji/mazec/ui/KeyboardManager;->setKeyboard()V

    return-void
.end method
