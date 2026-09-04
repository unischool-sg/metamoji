.class public abstract Lcom/metamoji/lib/dialog/UtDialog;
.super Lcom/metamoji/lib/dialog/UtDialogBase;
.source "UtDialog.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/lib/dialog/UtDialog$BuiltInButtonType;,
        Lcom/metamoji/lib/dialog/UtDialog$DragInfo;,
        Lcom/metamoji/lib/dialog/UtDialog$DragParam;,
        Lcom/metamoji/lib/dialog/UtDialog$FocusManager;,
        Lcom/metamoji/lib/dialog/UtDialog$GravityOption;,
        Lcom/metamoji/lib/dialog/UtDialog$GuardColor;,
        Lcom/metamoji/lib/dialog/UtDialog$HeightOption;,
        Lcom/metamoji/lib/dialog/UtDialog$IViewInflater;,
        Lcom/metamoji/lib/dialog/UtDialog$KeyboardAdjustMode;,
        Lcom/metamoji/lib/dialog/UtDialog$KeyboardAdjustStrategy;,
        Lcom/metamoji/lib/dialog/UtDialog$ParentVisibilityOption;,
        Lcom/metamoji/lib/dialog/UtDialog$Refuge;,
        Lcom/metamoji/lib/dialog/UtDialog$ViewInflater;,
        Lcom/metamoji/lib/dialog/UtDialog$WhenMappings;,
        Lcom/metamoji/lib/dialog/UtDialog$WidthOption;,
        Lcom/metamoji/lib/dialog/UtDialog$XDialog;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUtDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UtDialog.kt\ncom/metamoji/lib/dialog/UtDialog\n+ 2 UtDialogArgumentDelegate.kt\ncom/metamoji/lib/dialog/UtBundleDelegate\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 View.kt\nandroidx/core/view/ViewKt\n+ 5 ColorDrawable.kt\nandroidx/core/graphics/drawable/ColorDrawableKt\n*L\n1#1,1655:1\n174#2,3:1656\n174#2,3:1659\n174#2,3:1662\n174#2,3:1665\n174#2,3:1668\n174#2,3:1671\n1#3:1674\n255#4:1675\n348#4:1676\n366#4:1677\n255#4:1679\n27#5:1678\n*S KotlinDebug\n*F\n+ 1 UtDialog.kt\ncom/metamoji/lib/dialog/UtDialog\n*L\n210#1:1656,3\n216#1:1659,3\n317#1:1662,3\n469#1:1665,3\n478#1:1668,3\n498#1:1671,3\n504#1:1675\n1015#1:1676\n1015#1:1677\n1336#1:1679\n1170#1:1678\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00a4\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u000c\n\u0002\u0010\u0002\n\u0002\u0008\u001c\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0019\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0007\n\u0002\u0008\u0019\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008*\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0016\u0008&\u0018\u00002\u00020\u0001:\u001e\u00e6\u0002\u00e7\u0002\u00e8\u0002\u00e9\u0002\u00ea\u0002\u00eb\u0002\u00ec\u0002\u00ed\u0002\u00ee\u0002\u00ef\u0002\u00f0\u0002\u00f1\u0002\u00f2\u0002\u00f3\u0002\u00f4\u0002B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0005H\u0014J\u0010\u0010\u0014\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u0005H\u0016J\u0008\u0010\u0016\u001a\u00020\u0005H\u0016J\u000e\u0010L\u001a\u00020\u00122\u0006\u0010M\u001a\u00020/J\u000e\u0010N\u001a\u00020\u00122\u0006\u0010M\u001a\u00020/J\u000e\u0010O\u001a\u00020\u00122\u0006\u0010P\u001a\u00020/J\u000e\u0010Q\u001a\u00020\u00122\u0006\u0010P\u001a\u00020/J \u0010R\u001a\u00020/2\u0006\u0010S\u001a\u00020/2\u0006\u0010T\u001a\u00020/2\u0006\u0010U\u001a\u00020/H\u0014J\u0008\u0010V\u001a\u00020\u0012H\u0004J\u0012\u0010s\u001a\u00020/2\u0008\u0008\u0001\u0010t\u001a\u00020/H\u0007J\u0008\u0010u\u001a\u00020/H\u0003J\u0008\u0010v\u001a\u00020\u0012H\u0004J\u001c\u0010y\u001a\u00020z2\u0008\u0008\u0002\u0010{\u001a\u00020\u00052\n\u0008\u0002\u0010|\u001a\u0004\u0018\u00010}J&\u0010\u009d\u0001\u001a\u00020\u00122\u0007\u0010\u009e\u0001\u001a\u00020\u00052\u0012\u0008\u0002\u0010\u009f\u0001\u001a\u000b\u0012\u0004\u0012\u00020\u0012\u0018\u00010\u00a0\u0001H\u0002J&\u0010\u00a1\u0001\u001a\u00020\u00122\u0007\u0010\u009e\u0001\u001a\u00020\u00052\u0012\u0008\u0002\u0010\u009f\u0001\u001a\u000b\u0012\u0004\u0012\u00020\u0012\u0018\u00010\u00a0\u0001H\u0002J\u0015\u0010\u00b1\u0001\u001a\u00020\u00122\n\u0010\u00ae\u0001\u001a\u0005\u0018\u00010\u00a7\u0001H\u0016J\u001e\u0010\u00b2\u0001\u001a\u00030\u00b3\u00012\t\u0008\u0001\u0010\u00b4\u0001\u001a\u00020/2\u0007\u0010\u00b5\u0001\u001a\u00020\u0005H\u0002J(\u0010\u00d9\u0001\u001a\u00020\u00122\t\u0008\u0001\u0010\u00b4\u0001\u001a\u00020/2\t\u0008\u0002\u0010\u00b5\u0001\u001a\u00020\u00052\t\u0008\u0002\u0010\u00da\u0001\u001a\u00020\u0005J\u0011\u0010\u00d9\u0001\u001a\u00020\u00122\u0008\u0010\u00db\u0001\u001a\u00030\u00b3\u0001J(\u0010\u00dc\u0001\u001a\u00020\u00122\t\u0008\u0001\u0010\u00b4\u0001\u001a\u00020/2\t\u0008\u0002\u0010\u00b5\u0001\u001a\u00020\u00052\t\u0008\u0002\u0010\u00da\u0001\u001a\u00020\u0005J\u0011\u0010\u00dc\u0001\u001a\u00020\u00122\u0008\u0010\u00db\u0001\u001a\u00030\u00b3\u0001J\n\u0010\u00e3\u0001\u001a\u00030\u00de\u0001H\u0016J\'\u0010\u00e4\u0001\u001a\u00020\u00122\u0008\u0010\u00e5\u0001\u001a\u00030\u00e6\u00012\t\u0008\u0001\u0010\u00b4\u0001\u001a\u00020/2\u0007\u0010\u00da\u0001\u001a\u00020\u0005H\u0002J\t\u0010\u00e7\u0001\u001a\u00020\u0012H\u0002J\t\u0010\u00e8\u0001\u001a\u00020\u0012H\u0002J\t\u0010\u00ef\u0001\u001a\u00020\u0012H\u0002J\t\u0010\u00f5\u0001\u001a\u00020\u0012H\u0003J\t\u0010\u009a\u0002\u001a\u00020\u0012H\u0002J\t\u0010\u009b\u0002\u001a\u00020\u0012H\u0002J\t\u0010\u009c\u0002\u001a\u00020\u0012H\u0002J\u0013\u0010\u009d\u0002\u001a\u00020\u00052\u0008\u0010\u009e\u0002\u001a\u00030\u009f\u0002H\u0002J\u0013\u0010\u00a0\u0002\u001a\u00020\u00052\u0008\u0010\u009e\u0002\u001a\u00030\u009f\u0002H\u0002J%\u0010\u00a1\u0002\u001a\u00020\u00122\t\u0010\u00a2\u0002\u001a\u0004\u0018\u00010^2\t\u0010\u00a3\u0002\u001a\u0004\u0018\u00010^H\u0002\u00a2\u0006\u0003\u0010\u00a4\u0002J\t\u0010\u00a5\u0002\u001a\u00020\u0012H\u0002J\t\u0010\u00a6\u0002\u001a\u00020\u0012H\u0002J\t\u0010\u00a7\u0002\u001a\u00020\u0012H\u0002J\t\u0010\u00a9\u0002\u001a\u00020\u0012H\u0016J \u0010\u00aa\u0002\u001a\u00030\u008e\u00022\n\u0010\u00ab\u0002\u001a\u0005\u0018\u00010\u00ac\u00022\u0008\u0010\u00ad\u0002\u001a\u00030\u00ae\u0002H$J\u0016\u0010\u00b1\u0002\u001a\u00030\u00b2\u00022\n\u0010\u00ab\u0002\u001a\u0005\u0018\u00010\u00ac\u0002H\u0016J.\u0010\u00ba\u0002\u001a\u0005\u0018\u00010\u008e\u00022\u0008\u0010\u00bb\u0002\u001a\u00030\u00bc\u00022\n\u0010\u00bd\u0002\u001a\u0005\u0018\u00010\u0083\u00022\n\u0010\u00ab\u0002\u001a\u0005\u0018\u00010\u00ac\u0002H\u0016J\t\u0010\u00be\u0002\u001a\u00020\u0012H\u0004J\u0011\u0010\u00c0\u0002\u001a\u00020\u00122\u0008\u0010\u00c1\u0002\u001a\u00030\u00c2\u0002J\u0014\u0010\u00c3\u0002\u001a\u0005\u0018\u00010\u00c4\u00022\u0008\u0010\u00c1\u0002\u001a\u00030\u00c2\u0002J\t\u0010\u00c5\u0002\u001a\u00020\u0012H\u0016J\t\u0010\u00c6\u0002\u001a\u00020\u0012H\u0014J\t\u0010\u00c7\u0002\u001a\u00020\u0012H\u0014J\u0007\u0010\u00cc\u0002\u001a\u00020\u0012J\t\u0010\u00cd\u0002\u001a\u00020\u0012H\u0002J\u0013\u0010\u00ce\u0002\u001a\u00020/2\u0008\u0010\u00cf\u0002\u001a\u00030\u0083\u0002H\u0002J\u001b\u0010\u00d0\u0002\u001a\u00020\u00122\u0007\u0010\u00d1\u0002\u001a\u00020/2\u0007\u0010\u00d2\u0002\u001a\u00020/H\u0016J\u001e\u0010\u00d3\u0002\u001a\u00020\u00122\u0007\u0010\u00d4\u0002\u001a\u00020/2\n\u0010\u00d5\u0002\u001a\u0005\u0018\u00010\u008e\u0002H\u0002J\u0012\u0010\u00d8\u0002\u001a\u00020\u00122\u0007\u0010\u00d4\u0002\u001a\u00020/H\u0002J\u001e\u0010\u00d9\u0002\u001a\u00020\u00122\u0007\u0010\u00d4\u0002\u001a\u00020/2\n\u0010\u00d5\u0002\u001a\u0005\u0018\u00010\u008e\u0002H\u0002J\t\u0010\u00da\u0002\u001a\u00020\u0012H\u0014J\u0013\u0010\u00db\u0002\u001a\u00020\u00122\u0008\u0010\u00dc\u0002\u001a\u00030\u008e\u0002H\u0014J\u0013\u0010\u00dd\u0002\u001a\u00020\u00052\u0008\u0010\u00de\u0002\u001a\u00030\u00df\u0002H\u0016J\u0013\u0010\u00e0\u0002\u001a\u00020\u00122\u0008\u0010\u00dc\u0002\u001a\u00030\u008e\u0002H\u0014J\u0013\u0010\u00e1\u0002\u001a\u00020\u00122\u0008\u0010\u00dc\u0002\u001a\u00030\u008e\u0002H\u0014J\t\u0010\u00e2\u0002\u001a\u00020\u0012H\u0014J\t\u0010\u00e3\u0002\u001a\u00020\u0012H\u0014J\t\u0010\u00e4\u0002\u001a\u00020\u0005H\u0014J\t\u0010\u00e5\u0002\u001a\u00020\u0005H\u0014R+\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u00058F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR+\u0010\r\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u00058D@DX\u0084\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008\u0010\u0010\u000c\u001a\u0004\u0008\u000e\u0010\u0008\"\u0004\u0008\u000f\u0010\nR+\u0010\u0017\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u00058F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008\u001a\u0010\u000c\u001a\u0004\u0008\u0018\u0010\u0008\"\u0004\u0008\u0019\u0010\nR+\u0010\u001b\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u00058F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008\u001e\u0010\u000c\u001a\u0004\u0008\u001c\u0010\u0008\"\u0004\u0008\u001d\u0010\nR+\u0010\u001f\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u00058F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008\"\u0010\u000c\u001a\u0004\u0008 \u0010\u0008\"\u0004\u0008!\u0010\nR+\u0010#\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u00058F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008&\u0010\u000c\u001a\u0004\u0008$\u0010\u0008\"\u0004\u0008%\u0010\nR+\u0010\'\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u00058F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008*\u0010\u000c\u001a\u0004\u0008(\u0010\u0008\"\u0004\u0008)\u0010\nR+\u0010+\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u00058F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008.\u0010\u000c\u001a\u0004\u0008,\u0010\u0008\"\u0004\u0008-\u0010\nR+\u00100\u001a\u00020/2\u0006\u0010\u0004\u001a\u00020/8F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\u00085\u0010\u000c\u001a\u0004\u00081\u00102\"\u0004\u00083\u00104R+\u00107\u001a\u0002062\u0006\u0010\u0004\u001a\u0002068F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008<\u0010\u000c\u001a\u0004\u00088\u00109\"\u0004\u0008:\u0010;R+\u0010>\u001a\u00020=2\u0006\u0010\u0004\u001a\u00020=8F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008C\u0010\u000c\u001a\u0004\u0008?\u0010@\"\u0004\u0008A\u0010BR+\u0010D\u001a\u00020/2\u0006\u0010\u0004\u001a\u00020/8F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008G\u0010\u000c\u001a\u0004\u0008E\u00102\"\u0004\u0008F\u00104R+\u0010H\u001a\u00020/2\u0006\u0010\u0004\u001a\u00020/8F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008K\u0010\u000c\u001a\u0004\u0008I\u00102\"\u0004\u0008J\u00104R+\u0010X\u001a\u00020W2\u0006\u0010\u0004\u001a\u00020W8F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008]\u0010\u000c\u001a\u0004\u0008Y\u0010Z\"\u0004\u0008[\u0010\\R/\u0010_\u001a\u0004\u0018\u00010^2\u0008\u0010\u0004\u001a\u0004\u0018\u00010^8F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008d\u0010\u000c\u001a\u0004\u0008`\u0010a\"\u0004\u0008b\u0010cR/\u0010e\u001a\u0004\u0018\u00010^2\u0008\u0010\u0004\u001a\u0004\u0018\u00010^8F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008h\u0010\u000c\u001a\u0004\u0008f\u0010a\"\u0004\u0008g\u0010cR+\u0010i\u001a\u00020/2\u0006\u0010\u0004\u001a\u00020/8F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008l\u0010\u000c\u001a\u0004\u0008j\u00102\"\u0004\u0008k\u00104R\u0014\u0010m\u001a\u00020\u00058BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008n\u0010\u0008R+\u0010o\u001a\u00020/2\u0006\u0010\u0004\u001a\u00020/8F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008r\u0010\u000c\u001a\u0004\u0008p\u00102\"\u0004\u0008q\u00104R\u0010\u0010w\u001a\u0004\u0018\u00010xX\u0082\u000e\u00a2\u0006\u0002\n\u0000R0\u0010\u007f\u001a\u00020~2\u0006\u0010\u0004\u001a\u00020~8F@FX\u0086\u008e\u0002\u00a2\u0006\u0017\n\u0005\u0008\u0084\u0001\u0010\u000c\u001a\u0006\u0008\u0080\u0001\u0010\u0081\u0001\"\u0006\u0008\u0082\u0001\u0010\u0083\u0001R3\u0010\u0086\u0001\u001a\u00030\u0085\u00012\u0007\u0010\u0004\u001a\u00030\u0085\u00018F@FX\u0086\u008e\u0002\u00a2\u0006\u0017\n\u0005\u0008\u008b\u0001\u0010\u000c\u001a\u0006\u0008\u0087\u0001\u0010\u0088\u0001\"\u0006\u0008\u0089\u0001\u0010\u008a\u0001R3\u0010\u008d\u0001\u001a\u00030\u008c\u00012\u0007\u0010\u0004\u001a\u00030\u008c\u00018F@FX\u0086\u008e\u0002\u00a2\u0006\u0017\n\u0005\u0008\u0092\u0001\u0010\u000c\u001a\u0006\u0008\u008e\u0001\u0010\u008f\u0001\"\u0006\u0008\u0090\u0001\u0010\u0091\u0001R(\u0010\u0094\u0001\u001a\u00020\u00052\u0007\u0010\u0093\u0001\u001a\u00020\u00058F@FX\u0086\u000e\u00a2\u0006\u000e\u001a\u0005\u0008\u0095\u0001\u0010\u0008\"\u0005\u0008\u0096\u0001\u0010\nR\u0018\u0010\u0097\u0001\u001a\u00030\u0098\u00018BX\u0082\u0004\u00a2\u0006\u0008\u001a\u0006\u0008\u0099\u0001\u0010\u009a\u0001R\u0018\u0010\u009b\u0001\u001a\u00030\u0098\u00018BX\u0082\u0004\u00a2\u0006\u0008\u001a\u0006\u0008\u009c\u0001\u0010\u009a\u0001R\u0016\u0010\u00a2\u0001\u001a\u0004\u0018\u00010\u00008F\u00a2\u0006\u0008\u001a\u0006\u0008\u00a3\u0001\u0010\u00a4\u0001R\u0016\u0010\u00a5\u0001\u001a\u0004\u0018\u00010\u00008F\u00a2\u0006\u0008\u001a\u0006\u0008\u00a6\u0001\u0010\u00a4\u0001R7\u0010\u00a8\u0001\u001a\u0005\u0018\u00010\u00a7\u00012\t\u0010\u0004\u001a\u0005\u0018\u00010\u00a7\u00018B@BX\u0082\u008e\u0002\u00a2\u0006\u0017\n\u0005\u0008\u00ad\u0001\u0010\u000c\u001a\u0006\u0008\u00a9\u0001\u0010\u00aa\u0001\"\u0006\u0008\u00ab\u0001\u0010\u00ac\u0001R0\u0010\u00ae\u0001\u001a\u0005\u0018\u00010\u00a7\u00012\n\u0010\u0093\u0001\u001a\u0005\u0018\u00010\u00a7\u00018F@FX\u0086\u000e\u00a2\u0006\u0010\u001a\u0006\u0008\u00af\u0001\u0010\u00aa\u0001\"\u0006\u0008\u00b0\u0001\u0010\u00ac\u0001R\u0018\u0010\u00b6\u0001\u001a\u00030\u00b3\u00018DX\u0084\u0004\u00a2\u0006\u0008\u001a\u0006\u0008\u00b7\u0001\u0010\u00b8\u0001R\u0018\u0010\u00b9\u0001\u001a\u00030\u00b3\u00018DX\u0084\u0004\u00a2\u0006\u0008\u001a\u0006\u0008\u00ba\u0001\u0010\u00b8\u0001R/\u0010\u00bb\u0001\u001a\u00020/2\u0006\u0010\u0004\u001a\u00020/8B@BX\u0082\u008e\u0002\u00a2\u0006\u0015\n\u0005\u0008\u00be\u0001\u0010\u000c\u001a\u0005\u0008\u00bc\u0001\u00102\"\u0005\u0008\u00bd\u0001\u00104R/\u0010\u00bf\u0001\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u00058B@BX\u0082\u008e\u0002\u00a2\u0006\u0015\n\u0005\u0008\u00c2\u0001\u0010\u000c\u001a\u0005\u0008\u00c0\u0001\u0010\u0008\"\u0005\u0008\u00c1\u0001\u0010\nR/\u0010\u00c3\u0001\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u00058B@BX\u0082\u008e\u0002\u00a2\u0006\u0015\n\u0005\u0008\u00c6\u0001\u0010\u000c\u001a\u0005\u0008\u00c4\u0001\u0010\u0008\"\u0005\u0008\u00c5\u0001\u0010\nR\u001a\u0010\u00c7\u0001\u001a\u00020\u00058F\u00a2\u0006\u000e\u0012\u0005\u0008\u00c8\u0001\u0010\u0003\u001a\u0005\u0008\u00c9\u0001\u0010\u0008R/\u0010\u00ca\u0001\u001a\u00020/2\u0006\u0010\u0004\u001a\u00020/8B@BX\u0082\u008e\u0002\u00a2\u0006\u0015\n\u0005\u0008\u00cd\u0001\u0010\u000c\u001a\u0005\u0008\u00cb\u0001\u00102\"\u0005\u0008\u00cc\u0001\u00104R/\u0010\u00ce\u0001\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u00058B@BX\u0082\u008e\u0002\u00a2\u0006\u0015\n\u0005\u0008\u00d1\u0001\u0010\u000c\u001a\u0005\u0008\u00cf\u0001\u0010\u0008\"\u0005\u0008\u00d0\u0001\u0010\nR/\u0010\u00d2\u0001\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u00058B@BX\u0082\u008e\u0002\u00a2\u0006\u0015\n\u0005\u0008\u00d5\u0001\u0010\u000c\u001a\u0005\u0008\u00d3\u0001\u0010\u0008\"\u0005\u0008\u00d4\u0001\u0010\nR\u001a\u0010\u00d6\u0001\u001a\u00020\u00058F\u00a2\u0006\u000e\u0012\u0005\u0008\u00d7\u0001\u0010\u0003\u001a\u0005\u0008\u00d8\u0001\u0010\u0008R!\u0010\u00dd\u0001\u001a\u00030\u00de\u00018BX\u0082\u0084\u0002\u00a2\u0006\u0010\n\u0006\u0008\u00e1\u0001\u0010\u00e2\u0001\u001a\u0006\u0008\u00df\u0001\u0010\u00e0\u0001R\u0013\u0010\u00e9\u0001\u001a\u00020/8F\u00a2\u0006\u0007\u001a\u0005\u0008\u00ea\u0001\u00102R\u0013\u0010\u00eb\u0001\u001a\u00020\u00058F\u00a2\u0006\u0007\u001a\u0005\u0008\u00eb\u0001\u0010\u0008R\u0013\u0010\u00ec\u0001\u001a\u00020\u00058F\u00a2\u0006\u0007\u001a\u0005\u0008\u00ec\u0001\u0010\u0008R\u0013\u0010\u00ed\u0001\u001a\u00020\u00058F\u00a2\u0006\u0007\u001a\u0005\u0008\u00ed\u0001\u0010\u0008R\u0013\u0010\u00ee\u0001\u001a\u00020\u00058F\u00a2\u0006\u0007\u001a\u0005\u0008\u00ee\u0001\u0010\u0008R%\u0010\u00f0\u0001\u001a\u00070\u00f1\u0001R\u00020\u00008BX\u0082\u0084\u0002\u00a2\u0006\u0010\n\u0006\u0008\u00f4\u0001\u0010\u00e2\u0001\u001a\u0006\u0008\u00f2\u0001\u0010\u00f3\u0001R#\u0010\u00f7\u0001\u001a\u00030\u00f6\u00012\u0007\u0010\u0013\u001a\u00030\u00f6\u0001@BX\u0086.\u00a2\u0006\n\n\u0000\u001a\u0006\u0008\u00f8\u0001\u0010\u00f9\u0001R#\u0010\u00fa\u0001\u001a\u00030\u00e6\u00012\u0007\u0010\u0013\u001a\u00030\u00e6\u0001@BX\u0086.\u00a2\u0006\n\n\u0000\u001a\u0006\u0008\u00fb\u0001\u0010\u00fc\u0001R#\u0010\u00fd\u0001\u001a\u00030\u00e6\u00012\u0007\u0010\u0013\u001a\u00030\u00e6\u0001@BX\u0086.\u00a2\u0006\n\n\u0000\u001a\u0006\u0008\u00fe\u0001\u0010\u00fc\u0001R#\u0010\u0080\u0002\u001a\u00030\u00ff\u00012\u0007\u0010\u0013\u001a\u00030\u00ff\u0001@BX\u0086.\u00a2\u0006\n\n\u0000\u001a\u0006\u0008\u0081\u0002\u0010\u0082\u0002R+\u0010\u0084\u0002\u001a\u00030\u0083\u00022\u0007\u0010\u0013\u001a\u00030\u0083\u0002@DX\u0086.\u00a2\u0006\u0012\n\u0000\u001a\u0006\u0008\u0085\u0002\u0010\u0086\u0002\"\u0006\u0008\u0087\u0002\u0010\u0088\u0002R+\u0010\u0089\u0002\u001a\u00030\u0083\u00022\u0007\u0010\u0013\u001a\u00030\u0083\u0002@DX\u0086.\u00a2\u0006\u0012\n\u0000\u001a\u0006\u0008\u008a\u0002\u0010\u0086\u0002\"\u0006\u0008\u008b\u0002\u0010\u0088\u0002R#\u0010\u008c\u0002\u001a\u00030\u0083\u00022\u0007\u0010\u0013\u001a\u00030\u0083\u0002@BX\u0086.\u00a2\u0006\n\n\u0000\u001a\u0006\u0008\u008d\u0002\u0010\u0086\u0002R#\u0010\u008f\u0002\u001a\u00030\u008e\u00022\u0007\u0010\u0013\u001a\u00030\u008e\u0002@BX\u0086.\u00a2\u0006\n\n\u0000\u001a\u0006\u0008\u0090\u0002\u0010\u0091\u0002R#\u0010\u0092\u0002\u001a\u00030\u008e\u00022\u0007\u0010\u0013\u001a\u00030\u008e\u0002@BX\u0086.\u00a2\u0006\n\n\u0000\u001a\u0006\u0008\u0093\u0002\u0010\u0091\u0002R#\u0010\u0095\u0002\u001a\u00030\u0094\u00022\u0007\u0010\u0013\u001a\u00030\u0094\u0002@BX\u0086.\u00a2\u0006\n\n\u0000\u001a\u0006\u0008\u0096\u0002\u0010\u0097\u0002R#\u0010\u0098\u0002\u001a\u00030\u00ff\u00012\u0007\u0010\u0013\u001a\u00030\u00ff\u0001@BX\u0086.\u00a2\u0006\n\n\u0000\u001a\u0006\u0008\u0099\u0002\u0010\u0082\u0002R\u0013\u0010\u00a8\u0002\u001a\u00020\u00058F\u00a2\u0006\u0007\u001a\u0005\u0008\u00a8\u0002\u0010\u0008R\u0012\u0010\u00af\u0002\u001a\u0005\u0018\u00010\u00b0\u0002X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u00b3\u0002\u001a\u00030\u00b4\u0002X\u0084\u0004\u00a2\u0006\n\n\u0000\u001a\u0006\u0008\u00b5\u0002\u0010\u00b6\u0002R\'\u0010\u00b7\u0002\u001a\u00020/2\u0006\u0010\u0013\u001a\u00020/@DX\u0086\u000e\u00a2\u0006\u0010\n\u0000\u001a\u0005\u0008\u00b8\u0002\u00102\"\u0005\u0008\u00b9\u0002\u00104R\u000f\u0010\u00bf\u0002\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u00c8\u0002\u001a\u0005\u0018\u00010\u00c9\u00028F\u00a2\u0006\u0008\u001a\u0006\u0008\u00ca\u0002\u0010\u00cb\u0002R\u0012\u0010\u00d6\u0002\u001a\u0005\u0018\u00010\u00d7\u0002X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u00f5\u0002"
    }
    d2 = {
        "Lcom/metamoji/lib/dialog/UtDialog;",
        "Lcom/metamoji/lib/dialog/UtDialogBase;",
        "<init>",
        "()V",
        "<set-?>",
        "",
        "scrollable",
        "getScrollable",
        "()Z",
        "setScrollable",
        "(Z)V",
        "scrollable$delegate",
        "Lkotlin/properties/ReadWriteProperty;",
        "positiveCancellable",
        "getPositiveCancellable",
        "setPositiveCancellable",
        "positiveCancellable$delegate",
        "onCancellableChanged",
        "",
        "value",
        "setCancelable",
        "cancelable",
        "isCancelable",
        "draggable",
        "getDraggable",
        "setDraggable",
        "draggable$delegate",
        "clipVerticalOnDrag",
        "getClipVerticalOnDrag",
        "setClipVerticalOnDrag",
        "clipVerticalOnDrag$delegate",
        "clipHorizontalOnDrag",
        "getClipHorizontalOnDrag",
        "setClipHorizontalOnDrag",
        "clipHorizontalOnDrag$delegate",
        "animationEffect",
        "getAnimationEffect",
        "setAnimationEffect",
        "animationEffect$delegate",
        "noHeader",
        "getNoHeader",
        "setNoHeader",
        "noHeader$delegate",
        "noInvisibleHeaderButton",
        "getNoInvisibleHeaderButton",
        "setNoInvisibleHeaderButton",
        "noInvisibleHeaderButton$delegate",
        "",
        "bodyContainerMargin",
        "getBodyContainerMargin",
        "()I",
        "setBodyContainerMargin",
        "(I)V",
        "bodyContainerMargin$delegate",
        "Lcom/metamoji/lib/dialog/UtDialog$WidthOption;",
        "widthOption",
        "getWidthOption",
        "()Lcom/metamoji/lib/dialog/UtDialog$WidthOption;",
        "setWidthOption",
        "(Lcom/metamoji/lib/dialog/UtDialog$WidthOption;)V",
        "widthOption$delegate",
        "Lcom/metamoji/lib/dialog/UtDialog$HeightOption;",
        "heightOption",
        "getHeightOption",
        "()Lcom/metamoji/lib/dialog/UtDialog$HeightOption;",
        "setHeightOption",
        "(Lcom/metamoji/lib/dialog/UtDialog$HeightOption;)V",
        "heightOption$delegate",
        "widthHint",
        "getWidthHint",
        "setWidthHint",
        "widthHint$delegate",
        "heightHint",
        "getHeightHint",
        "setHeightHint",
        "heightHint$delegate",
        "setFixedHeight",
        "height",
        "setLimitHeight",
        "setFixedWidth",
        "width",
        "setLimitWidth",
        "calcCustomContainerHeight",
        "currentBodyHeight",
        "currentContainerHeight",
        "maxContainerHeight",
        "updateCustomHeight",
        "Lcom/metamoji/lib/dialog/UtDialog$GravityOption;",
        "gravityOption",
        "getGravityOption",
        "()Lcom/metamoji/lib/dialog/UtDialog$GravityOption;",
        "setGravityOption",
        "(Lcom/metamoji/lib/dialog/UtDialog$GravityOption;)V",
        "gravityOption$delegate",
        "",
        "customPositionX",
        "getCustomPositionX",
        "()Ljava/lang/Float;",
        "setCustomPositionX",
        "(Ljava/lang/Float;)V",
        "customPositionX$delegate",
        "customPositionY",
        "getCustomPositionY",
        "setCustomPositionY",
        "customPositionY$delegate",
        "guardColor",
        "getGuardColor",
        "setGuardColor",
        "guardColor$delegate",
        "hasGuardColor",
        "getHasGuardColor",
        "bodyGuardColor",
        "getBodyGuardColor",
        "setBodyGuardColor",
        "bodyGuardColor$delegate",
        "resolveColor",
        "color",
        "managedGuardColor",
        "applyGuardColor",
        "focusManager",
        "Lcom/metamoji/lib/dialog/UtDialog$FocusManager;",
        "enableFocusManagement",
        "Lcom/metamoji/lib/dialog/UtFocusManager;",
        "withDialogButtons",
        "useKey",
        "Lcom/metamoji/lib/dialog/UtFocusManager$UseKey;",
        "Lcom/metamoji/lib/dialog/UtDialog$KeyboardAdjustMode;",
        "adjustContentForKeyboard",
        "getAdjustContentForKeyboard",
        "()Lcom/metamoji/lib/dialog/UtDialog$KeyboardAdjustMode;",
        "setAdjustContentForKeyboard",
        "(Lcom/metamoji/lib/dialog/UtDialog$KeyboardAdjustMode;)V",
        "adjustContentForKeyboard$delegate",
        "Lcom/metamoji/lib/dialog/UtDialog$KeyboardAdjustStrategy;",
        "adjustContentsStrategy",
        "getAdjustContentsStrategy",
        "()Lcom/metamoji/lib/dialog/UtDialog$KeyboardAdjustStrategy;",
        "setAdjustContentsStrategy",
        "(Lcom/metamoji/lib/dialog/UtDialog$KeyboardAdjustStrategy;)V",
        "adjustContentsStrategy$delegate",
        "Lcom/metamoji/lib/dialog/UtDialog$ParentVisibilityOption;",
        "parentVisibilityOption",
        "getParentVisibilityOption",
        "()Lcom/metamoji/lib/dialog/UtDialog$ParentVisibilityOption;",
        "setParentVisibilityOption",
        "(Lcom/metamoji/lib/dialog/UtDialog$ParentVisibilityOption;)V",
        "parentVisibilityOption$delegate",
        "v",
        "visible",
        "getVisible",
        "setVisible",
        "fadeInAnimation",
        "Lcom/metamoji/lib/dialog/UtFadeAnimation;",
        "getFadeInAnimation",
        "()Lcom/metamoji/lib/dialog/UtFadeAnimation;",
        "fadeOutAnimation",
        "getFadeOutAnimation",
        "fadeIn",
        "enableAnimation",
        "completed",
        "Lkotlin/Function0;",
        "fadeOut",
        "rootDialog",
        "getRootDialog",
        "()Lcom/metamoji/lib/dialog/UtDialog;",
        "parentDialog",
        "getParentDialog",
        "",
        "privateTitle",
        "getPrivateTitle",
        "()Ljava/lang/String;",
        "setPrivateTitle",
        "(Ljava/lang/String;)V",
        "privateTitle$delegate",
        "title",
        "getTitle",
        "setTitle",
        "replaceTitle",
        "idToButtonType",
        "Lcom/metamoji/lib/dialog/UtDialog$BuiltInButtonType;",
        "id",
        "positive",
        "leftButtonType",
        "getLeftButtonType",
        "()Lcom/metamoji/lib/dialog/UtDialog$BuiltInButtonType;",
        "rightButtonType",
        "getRightButtonType",
        "leftButtonText",
        "getLeftButtonText",
        "setLeftButtonText",
        "leftButtonText$delegate",
        "leftButtonPositive",
        "getLeftButtonPositive",
        "setLeftButtonPositive",
        "leftButtonPositive$delegate",
        "leftButtonBlue",
        "getLeftButtonBlue",
        "setLeftButtonBlue",
        "leftButtonBlue$delegate",
        "hasLeftButton",
        "getHasLeftButton$annotations",
        "getHasLeftButton",
        "rightButtonText",
        "getRightButtonText",
        "setRightButtonText",
        "rightButtonText$delegate",
        "rightButtonPositive",
        "getRightButtonPositive",
        "setRightButtonPositive",
        "rightButtonPositive$delegate",
        "rightButtonBlue",
        "getRightButtonBlue",
        "setRightButtonBlue",
        "rightButtonBlue$delegate",
        "hasRightButton",
        "getHasRightButton$annotations",
        "getHasRightButton",
        "setLeftButton",
        "blue",
        "type",
        "setRightButton",
        "themedContext",
        "Landroid/content/Context;",
        "getThemedContext",
        "()Landroid/content/Context;",
        "themedContext$delegate",
        "Lkotlin/Lazy;",
        "getContext",
        "updateButton",
        "button",
        "Landroid/widget/Button;",
        "updateLeftButton",
        "updateRightButton",
        "orientation",
        "getOrientation",
        "isLandscape",
        "isPortrait",
        "isPhone",
        "isTablet",
        "resetDialogPosition",
        "dragInfo",
        "Lcom/metamoji/lib/dialog/UtDialog$DragInfo;",
        "getDragInfo",
        "()Lcom/metamoji/lib/dialog/UtDialog$DragInfo;",
        "dragInfo$delegate",
        "enableDrag",
        "Landroid/widget/TextView;",
        "titleView",
        "getTitleView",
        "()Landroid/widget/TextView;",
        "leftButton",
        "getLeftButton",
        "()Landroid/widget/Button;",
        "rightButton",
        "getRightButton",
        "Landroid/widget/ProgressBar;",
        "progressRingOnTitleBar",
        "getProgressRingOnTitleBar",
        "()Landroid/widget/ProgressBar;",
        "Landroid/view/ViewGroup;",
        "rootView",
        "getRootView",
        "()Landroid/view/ViewGroup;",
        "setRootView",
        "(Landroid/view/ViewGroup;)V",
        "dialogView",
        "getDialogView",
        "setDialogView",
        "bodyContainer",
        "getBodyContainer",
        "Landroid/view/View;",
        "bodyView",
        "getBodyView",
        "()Landroid/view/View;",
        "refContainerView",
        "getRefContainerView",
        "Landroid/widget/FrameLayout;",
        "bodyGuardView",
        "getBodyGuardView",
        "()Landroid/widget/FrameLayout;",
        "centerProgressRing",
        "getCenterProgressRing",
        "setupLayout",
        "setupFixedSize",
        "setupDynamicSize",
        "updateDynamicHeight",
        "lp",
        "Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;",
        "updateDynamicWidth",
        "adjustDialogPosition",
        "x",
        "y",
        "(Ljava/lang/Float;Ljava/lang/Float;)V",
        "onRootViewSizeChanged",
        "onContainerHeightChanged",
        "onBodyViewSizeChanged",
        "isViewInitialized",
        "preCreateBodyView",
        "createBodyView",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "inflater",
        "Lcom/metamoji/lib/dialog/UtDialog$IViewInflater;",
        "keyboardObserver",
        "Lcom/metamoji/lib/dialog/ISoftwareKeyboardObserver;",
        "onCreateDialog",
        "Landroid/app/Dialog;",
        "compatBackKeyDispatcher",
        "Lcom/metamoji/lib/utils/CompatBackKeyDispatcher;",
        "getCompatBackKeyDispatcher",
        "()Lcom/metamoji/lib/utils/CompatBackKeyDispatcher;",
        "backInvokerPriority",
        "getBackInvokerPriority",
        "setBackInvokerPriority",
        "onCreateView",
        "orgInflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "setupWindowInsetsListener",
        "mRestoringFromRefuge",
        "comebackFromRefuge",
        "transaction",
        "Landroidx/fragment/app/FragmentTransaction;",
        "refuge",
        "Lcom/metamoji/lib/dialog/UtDialogHelper$IDialogRefuge;",
        "onResume",
        "internalCloseDialog",
        "onDialogOpening",
        "immService",
        "Landroid/view/inputmethod/InputMethodManager;",
        "getImmService",
        "()Landroid/view/inputmethod/InputMethodManager;",
        "hideSoftwareKeyboard",
        "prepareSoftwareKeyboardObserver",
        "getMaxScrollAmount",
        "scrollableView",
        "onSoftwareKeyboardChanged",
        "keyboardHeight",
        "screenHeight",
        "adjustContents",
        "bottomOffset",
        "focusedView",
        "paddingAnimator",
        "Landroid/animation/ValueAnimator;",
        "adjustByResize",
        "adjustByPan",
        "onDialogClosing",
        "onBackgroundTapped",
        "view",
        "handleKeyEvent",
        "event",
        "Landroid/view/KeyEvent;",
        "onLeftButtonTapped",
        "onRightButtonTapped",
        "onNegative",
        "onPositive",
        "confirmToCompletePositive",
        "confirmToCompleteNegative",
        "WidthOption",
        "HeightOption",
        "GravityOption",
        "GuardColor",
        "FocusManager",
        "KeyboardAdjustMode",
        "KeyboardAdjustStrategy",
        "ParentVisibilityOption",
        "BuiltInButtonType",
        "DragParam",
        "DragInfo",
        "IViewInflater",
        "ViewInflater",
        "XDialog",
        "Refuge",
        "dialog"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlin/reflect/KProperty<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final adjustContentForKeyboard$delegate:Lkotlin/properties/ReadWriteProperty;

.field private final adjustContentsStrategy$delegate:Lkotlin/properties/ReadWriteProperty;

.field private final animationEffect$delegate:Lkotlin/properties/ReadWriteProperty;

.field private backInvokerPriority:I

.field private bodyContainer:Landroid/view/ViewGroup;

.field private final bodyContainerMargin$delegate:Lkotlin/properties/ReadWriteProperty;

.field private final bodyGuardColor$delegate:Lkotlin/properties/ReadWriteProperty;

.field private bodyGuardView:Landroid/widget/FrameLayout;

.field private bodyView:Landroid/view/View;

.field private centerProgressRing:Landroid/widget/ProgressBar;

.field private final clipHorizontalOnDrag$delegate:Lkotlin/properties/ReadWriteProperty;

.field private final clipVerticalOnDrag$delegate:Lkotlin/properties/ReadWriteProperty;

.field private final compatBackKeyDispatcher:Lcom/metamoji/lib/utils/CompatBackKeyDispatcher;

.field private final customPositionX$delegate:Lkotlin/properties/ReadWriteProperty;

.field private final customPositionY$delegate:Lkotlin/properties/ReadWriteProperty;

.field protected dialogView:Landroid/view/ViewGroup;

.field private final dragInfo$delegate:Lkotlin/Lazy;

.field private final draggable$delegate:Lkotlin/properties/ReadWriteProperty;

.field private focusManager:Lcom/metamoji/lib/dialog/UtDialog$FocusManager;

.field private final gravityOption$delegate:Lkotlin/properties/ReadWriteProperty;

.field private final guardColor$delegate:Lkotlin/properties/ReadWriteProperty;

.field private final heightHint$delegate:Lkotlin/properties/ReadWriteProperty;

.field private final heightOption$delegate:Lkotlin/properties/ReadWriteProperty;

.field private keyboardObserver:Lcom/metamoji/lib/dialog/ISoftwareKeyboardObserver;

.field private leftButton:Landroid/widget/Button;

.field private final leftButtonBlue$delegate:Lkotlin/properties/ReadWriteProperty;

.field private final leftButtonPositive$delegate:Lkotlin/properties/ReadWriteProperty;

.field private final leftButtonText$delegate:Lkotlin/properties/ReadWriteProperty;

.field private mRestoringFromRefuge:Z

.field private final noHeader$delegate:Lkotlin/properties/ReadWriteProperty;

.field private final noInvisibleHeaderButton$delegate:Lkotlin/properties/ReadWriteProperty;

.field private paddingAnimator:Landroid/animation/ValueAnimator;

.field private final parentVisibilityOption$delegate:Lkotlin/properties/ReadWriteProperty;

.field private final positiveCancellable$delegate:Lkotlin/properties/ReadWriteProperty;

.field private final privateTitle$delegate:Lkotlin/properties/ReadWriteProperty;

.field private progressRingOnTitleBar:Landroid/widget/ProgressBar;

.field private refContainerView:Landroid/view/View;

.field private rightButton:Landroid/widget/Button;

.field private final rightButtonBlue$delegate:Lkotlin/properties/ReadWriteProperty;

.field private final rightButtonPositive$delegate:Lkotlin/properties/ReadWriteProperty;

.field private final rightButtonText$delegate:Lkotlin/properties/ReadWriteProperty;

.field protected rootView:Landroid/view/ViewGroup;

.field private final scrollable$delegate:Lkotlin/properties/ReadWriteProperty;

.field private final themedContext$delegate:Lkotlin/Lazy;

.field private titleView:Landroid/widget/TextView;

.field private final widthHint$delegate:Lkotlin/properties/ReadWriteProperty;

.field private final widthOption$delegate:Lkotlin/properties/ReadWriteProperty;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/16 v0, 0x1c

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "scrollable"

    const-string v3, "getScrollable()Z"

    const-class v4, Lcom/metamoji/lib/dialog/UtDialog;

    const/4 v5, 0x0

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    aput-object v1, v0, v5

    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "positiveCancellable"

    const-string v3, "getPositiveCancellable()Z"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "draggable"

    const-string v3, "getDraggable()Z"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "clipVerticalOnDrag"

    const-string v3, "getClipVerticalOnDrag()Z"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "clipHorizontalOnDrag"

    const-string v3, "getClipHorizontalOnDrag()Z"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "animationEffect"

    const-string v3, "getAnimationEffect()Z"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "noHeader"

    const-string v3, "getNoHeader()Z"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "noInvisibleHeaderButton"

    const-string v3, "getNoInvisibleHeaderButton()Z"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "bodyContainerMargin"

    const-string v3, "getBodyContainerMargin()I"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "widthOption"

    const-string v3, "getWidthOption()Lcom/metamoji/lib/dialog/UtDialog$WidthOption;"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "heightOption"

    const-string v3, "getHeightOption()Lcom/metamoji/lib/dialog/UtDialog$HeightOption;"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "widthHint"

    const-string v3, "getWidthHint()I"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "heightHint"

    const-string v3, "getHeightHint()I"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "gravityOption"

    const-string v3, "getGravityOption()Lcom/metamoji/lib/dialog/UtDialog$GravityOption;"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/16 v2, 0xd

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "customPositionX"

    const-string v3, "getCustomPositionX()Ljava/lang/Float;"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/16 v2, 0xe

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "customPositionY"

    const-string v3, "getCustomPositionY()Ljava/lang/Float;"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/16 v2, 0xf

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "guardColor"

    const-string v3, "getGuardColor()I"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/16 v2, 0x10

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "bodyGuardColor"

    const-string v3, "getBodyGuardColor()I"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/16 v2, 0x11

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "adjustContentForKeyboard"

    const-string v3, "getAdjustContentForKeyboard()Lcom/metamoji/lib/dialog/UtDialog$KeyboardAdjustMode;"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/16 v2, 0x12

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "adjustContentsStrategy"

    const-string v3, "getAdjustContentsStrategy()Lcom/metamoji/lib/dialog/UtDialog$KeyboardAdjustStrategy;"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/16 v2, 0x13

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "parentVisibilityOption"

    const-string v3, "getParentVisibilityOption()Lcom/metamoji/lib/dialog/UtDialog$ParentVisibilityOption;"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/16 v2, 0x14

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "privateTitle"

    const-string v3, "getPrivateTitle()Ljava/lang/String;"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/16 v2, 0x15

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "leftButtonText"

    const-string v3, "getLeftButtonText()I"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/16 v2, 0x16

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "leftButtonPositive"

    const-string v3, "getLeftButtonPositive()Z"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/16 v2, 0x17

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "leftButtonBlue"

    const-string v3, "getLeftButtonBlue()Z"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/16 v2, 0x18

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "rightButtonText"

    const-string v3, "getRightButtonText()I"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/16 v2, 0x19

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "rightButtonPositive"

    const-string v3, "getRightButtonPositive()Z"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "rightButtonBlue"

    const-string v3, "getRightButtonBlue()Z"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    sput-object v0, Lcom/metamoji/lib/dialog/UtDialog;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 59
    invoke-direct {p0}, Lcom/metamoji/lib/dialog/UtDialogBase;-><init>()V

    .line 67
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getBundle()Lcom/metamoji/lib/dialog/UtBundleDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/lib/dialog/UtBundleDelegate;->getBooleanFalse()Lkotlin/properties/ReadWriteProperty;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/lib/dialog/UtDialog;->scrollable$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 74
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getBundle()Lcom/metamoji/lib/dialog/UtBundleDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/lib/dialog/UtBundleDelegate;->getBooleanFalse()Lkotlin/properties/ReadWriteProperty;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/lib/dialog/UtDialog;->positiveCancellable$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 101
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getBundle()Lcom/metamoji/lib/dialog/UtBundleDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/lib/dialog/UtBundleDelegate;->getBooleanFalse()Lkotlin/properties/ReadWriteProperty;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/lib/dialog/UtDialog;->draggable$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 109
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getBundle()Lcom/metamoji/lib/dialog/UtBundleDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/lib/dialog/UtBundleDelegate;->getBooleanTrue()Lkotlin/properties/ReadWriteProperty;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/lib/dialog/UtDialog;->clipVerticalOnDrag$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 117
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getBundle()Lcom/metamoji/lib/dialog/UtBundleDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/lib/dialog/UtBundleDelegate;->getBooleanTrue()Lkotlin/properties/ReadWriteProperty;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/lib/dialog/UtDialog;->clipHorizontalOnDrag$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 124
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getBundle()Lcom/metamoji/lib/dialog/UtBundleDelegate;

    move-result-object v0

    sget-object v1, Lcom/metamoji/lib/dialog/UtDialogConfig;->INSTANCE:Lcom/metamoji/lib/dialog/UtDialogConfig;

    invoke-virtual {v1}, Lcom/metamoji/lib/dialog/UtDialogConfig;->getAnimationEffect()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/metamoji/lib/dialog/UtBundleDelegate;->booleanWithDefault(Z)Lkotlin/properties/ReadWriteProperty;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/lib/dialog/UtDialog;->animationEffect$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 131
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getBundle()Lcom/metamoji/lib/dialog/UtBundleDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/lib/dialog/UtBundleDelegate;->getBooleanFalse()Lkotlin/properties/ReadWriteProperty;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/lib/dialog/UtDialog;->noHeader$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 140
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getBundle()Lcom/metamoji/lib/dialog/UtBundleDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/lib/dialog/UtBundleDelegate;->getBooleanFalse()Lkotlin/properties/ReadWriteProperty;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/lib/dialog/UtDialog;->noInvisibleHeaderButton$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 149
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getBundle()Lcom/metamoji/lib/dialog/UtBundleDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/lib/dialog/UtBundleDelegate;->getIntMinusOne()Lkotlin/properties/ReadWriteProperty;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/lib/dialog/UtDialog;->bodyContainerMargin$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 210
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getBundle()Lcom/metamoji/lib/dialog/UtBundleDelegate;

    move-result-object v0

    sget-object v1, Lcom/metamoji/lib/dialog/UtDialog$WidthOption;->COMPACT:Lcom/metamoji/lib/dialog/UtDialog$WidthOption;

    check-cast v1, Ljava/lang/Enum;

    .line 1656
    new-instance v2, Lcom/metamoji/lib/dialog/UtBundleDelegate$GenericDelegate;

    const-class v3, Ljava/lang/String;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    check-cast v3, Lkotlin/reflect/KClassifier;

    .line 1657
    new-instance v4, Lcom/metamoji/lib/dialog/UtDialog$special$$inlined$enum$1;

    invoke-direct {v4, v1}, Lcom/metamoji/lib/dialog/UtDialog$special$$inlined$enum$1;-><init>(Ljava/lang/Enum;)V

    check-cast v4, Lkotlin/jvm/functions/Function1;

    .line 1658
    sget-object v1, Lcom/metamoji/lib/dialog/UtDialog$special$$inlined$enum$2;->INSTANCE:Lcom/metamoji/lib/dialog/UtDialog$special$$inlined$enum$2;

    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 1656
    invoke-direct {v2, v0, v3, v4, v1}, Lcom/metamoji/lib/dialog/UtBundleDelegate$GenericDelegate;-><init>(Lcom/metamoji/lib/dialog/UtBundleDelegate;Lkotlin/reflect/KClassifier;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    check-cast v2, Lkotlin/properties/ReadWriteProperty;

    .line 210
    iput-object v2, p0, Lcom/metamoji/lib/dialog/UtDialog;->widthOption$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 216
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getBundle()Lcom/metamoji/lib/dialog/UtBundleDelegate;

    move-result-object v0

    sget-object v1, Lcom/metamoji/lib/dialog/UtDialog$HeightOption;->COMPACT:Lcom/metamoji/lib/dialog/UtDialog$HeightOption;

    check-cast v1, Ljava/lang/Enum;

    .line 1659
    new-instance v2, Lcom/metamoji/lib/dialog/UtBundleDelegate$GenericDelegate;

    const-class v3, Ljava/lang/String;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    check-cast v3, Lkotlin/reflect/KClassifier;

    .line 1660
    new-instance v4, Lcom/metamoji/lib/dialog/UtDialog$special$$inlined$enum$3;

    invoke-direct {v4, v1}, Lcom/metamoji/lib/dialog/UtDialog$special$$inlined$enum$3;-><init>(Ljava/lang/Enum;)V

    check-cast v4, Lkotlin/jvm/functions/Function1;

    .line 1661
    sget-object v1, Lcom/metamoji/lib/dialog/UtDialog$special$$inlined$enum$4;->INSTANCE:Lcom/metamoji/lib/dialog/UtDialog$special$$inlined$enum$4;

    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 1659
    invoke-direct {v2, v0, v3, v4, v1}, Lcom/metamoji/lib/dialog/UtBundleDelegate$GenericDelegate;-><init>(Lcom/metamoji/lib/dialog/UtBundleDelegate;Lkotlin/reflect/KClassifier;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    check-cast v2, Lkotlin/properties/ReadWriteProperty;

    .line 216
    iput-object v2, p0, Lcom/metamoji/lib/dialog/UtDialog;->heightOption$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 222
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getBundle()Lcom/metamoji/lib/dialog/UtBundleDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/lib/dialog/UtBundleDelegate;->getIntZero()Lkotlin/properties/ReadWriteProperty;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/lib/dialog/UtDialog;->widthHint$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 228
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getBundle()Lcom/metamoji/lib/dialog/UtBundleDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/lib/dialog/UtBundleDelegate;->getIntZero()Lkotlin/properties/ReadWriteProperty;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/lib/dialog/UtDialog;->heightHint$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 317
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getBundle()Lcom/metamoji/lib/dialog/UtBundleDelegate;

    move-result-object v0

    sget-object v1, Lcom/metamoji/lib/dialog/UtDialog$GravityOption;->RIGHT_TOP:Lcom/metamoji/lib/dialog/UtDialog$GravityOption;

    check-cast v1, Ljava/lang/Enum;

    .line 1662
    new-instance v2, Lcom/metamoji/lib/dialog/UtBundleDelegate$GenericDelegate;

    const-class v3, Ljava/lang/String;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    check-cast v3, Lkotlin/reflect/KClassifier;

    .line 1663
    new-instance v4, Lcom/metamoji/lib/dialog/UtDialog$special$$inlined$enum$5;

    invoke-direct {v4, v1}, Lcom/metamoji/lib/dialog/UtDialog$special$$inlined$enum$5;-><init>(Ljava/lang/Enum;)V

    check-cast v4, Lkotlin/jvm/functions/Function1;

    .line 1664
    sget-object v1, Lcom/metamoji/lib/dialog/UtDialog$special$$inlined$enum$6;->INSTANCE:Lcom/metamoji/lib/dialog/UtDialog$special$$inlined$enum$6;

    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 1662
    invoke-direct {v2, v0, v3, v4, v1}, Lcom/metamoji/lib/dialog/UtBundleDelegate$GenericDelegate;-><init>(Lcom/metamoji/lib/dialog/UtBundleDelegate;Lkotlin/reflect/KClassifier;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    check-cast v2, Lkotlin/properties/ReadWriteProperty;

    .line 317
    iput-object v2, p0, Lcom/metamoji/lib/dialog/UtDialog;->gravityOption$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 323
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getBundle()Lcom/metamoji/lib/dialog/UtBundleDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/lib/dialog/UtBundleDelegate;->getFloatNullable()Lkotlin/properties/ReadWriteProperty;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/lib/dialog/UtDialog;->customPositionX$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 329
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getBundle()Lcom/metamoji/lib/dialog/UtBundleDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/lib/dialog/UtBundleDelegate;->getFloatNullable()Lkotlin/properties/ReadWriteProperty;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/lib/dialog/UtDialog;->customPositionY$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 353
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getBundle()Lcom/metamoji/lib/dialog/UtBundleDelegate;

    move-result-object v0

    sget-object v1, Lcom/metamoji/lib/dialog/UtDialog$GuardColor;->INVALID:Lcom/metamoji/lib/dialog/UtDialog$GuardColor;

    invoke-virtual {v1}, Lcom/metamoji/lib/dialog/UtDialog$GuardColor;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/metamoji/lib/dialog/UtBundleDelegate;->intNonnull(I)Lkotlin/properties/ReadWriteProperty;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/lib/dialog/UtDialog;->guardColor$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 368
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getBundle()Lcom/metamoji/lib/dialog/UtBundleDelegate;

    move-result-object v0

    sget-object v1, Lcom/metamoji/lib/dialog/UtDialogConfig;->INSTANCE:Lcom/metamoji/lib/dialog/UtDialogConfig;

    invoke-virtual {v1}, Lcom/metamoji/lib/dialog/UtDialogConfig;->getDefaultBodyGuardColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/metamoji/lib/dialog/UtBundleDelegate;->intNonnull(I)Lkotlin/properties/ReadWriteProperty;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/lib/dialog/UtDialog;->bodyGuardColor$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 469
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getBundle()Lcom/metamoji/lib/dialog/UtBundleDelegate;

    move-result-object v0

    sget-object v1, Lcom/metamoji/lib/dialog/UtDialogConfig;->INSTANCE:Lcom/metamoji/lib/dialog/UtDialogConfig;

    invoke-virtual {v1}, Lcom/metamoji/lib/dialog/UtDialogConfig;->getAdjustContentForKeyboard()Lcom/metamoji/lib/dialog/UtDialog$KeyboardAdjustMode;

    move-result-object v1

    check-cast v1, Ljava/lang/Enum;

    .line 1665
    new-instance v2, Lcom/metamoji/lib/dialog/UtBundleDelegate$GenericDelegate;

    const-class v3, Ljava/lang/String;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    check-cast v3, Lkotlin/reflect/KClassifier;

    .line 1666
    new-instance v4, Lcom/metamoji/lib/dialog/UtDialog$special$$inlined$enum$7;

    invoke-direct {v4, v1}, Lcom/metamoji/lib/dialog/UtDialog$special$$inlined$enum$7;-><init>(Ljava/lang/Enum;)V

    check-cast v4, Lkotlin/jvm/functions/Function1;

    .line 1667
    sget-object v1, Lcom/metamoji/lib/dialog/UtDialog$special$$inlined$enum$8;->INSTANCE:Lcom/metamoji/lib/dialog/UtDialog$special$$inlined$enum$8;

    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 1665
    invoke-direct {v2, v0, v3, v4, v1}, Lcom/metamoji/lib/dialog/UtBundleDelegate$GenericDelegate;-><init>(Lcom/metamoji/lib/dialog/UtBundleDelegate;Lkotlin/reflect/KClassifier;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    check-cast v2, Lkotlin/properties/ReadWriteProperty;

    .line 469
    iput-object v2, p0, Lcom/metamoji/lib/dialog/UtDialog;->adjustContentForKeyboard$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 478
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getBundle()Lcom/metamoji/lib/dialog/UtBundleDelegate;

    move-result-object v0

    sget-object v1, Lcom/metamoji/lib/dialog/UtDialogConfig;->INSTANCE:Lcom/metamoji/lib/dialog/UtDialogConfig;

    invoke-virtual {v1}, Lcom/metamoji/lib/dialog/UtDialogConfig;->getAdjustContentsStrategy()Lcom/metamoji/lib/dialog/UtDialog$KeyboardAdjustStrategy;

    move-result-object v1

    check-cast v1, Ljava/lang/Enum;

    .line 1668
    new-instance v2, Lcom/metamoji/lib/dialog/UtBundleDelegate$GenericDelegate;

    const-class v3, Ljava/lang/String;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    check-cast v3, Lkotlin/reflect/KClassifier;

    .line 1669
    new-instance v4, Lcom/metamoji/lib/dialog/UtDialog$special$$inlined$enum$9;

    invoke-direct {v4, v1}, Lcom/metamoji/lib/dialog/UtDialog$special$$inlined$enum$9;-><init>(Ljava/lang/Enum;)V

    check-cast v4, Lkotlin/jvm/functions/Function1;

    .line 1670
    sget-object v1, Lcom/metamoji/lib/dialog/UtDialog$special$$inlined$enum$10;->INSTANCE:Lcom/metamoji/lib/dialog/UtDialog$special$$inlined$enum$10;

    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 1668
    invoke-direct {v2, v0, v3, v4, v1}, Lcom/metamoji/lib/dialog/UtBundleDelegate$GenericDelegate;-><init>(Lcom/metamoji/lib/dialog/UtBundleDelegate;Lkotlin/reflect/KClassifier;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    check-cast v2, Lkotlin/properties/ReadWriteProperty;

    .line 478
    iput-object v2, p0, Lcom/metamoji/lib/dialog/UtDialog;->adjustContentsStrategy$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 498
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getBundle()Lcom/metamoji/lib/dialog/UtBundleDelegate;

    move-result-object v0

    sget-object v1, Lcom/metamoji/lib/dialog/UtDialog$ParentVisibilityOption;->HIDE_AND_SHOW:Lcom/metamoji/lib/dialog/UtDialog$ParentVisibilityOption;

    check-cast v1, Ljava/lang/Enum;

    .line 1671
    new-instance v2, Lcom/metamoji/lib/dialog/UtBundleDelegate$GenericDelegate;

    const-class v3, Ljava/lang/String;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    check-cast v3, Lkotlin/reflect/KClassifier;

    .line 1672
    new-instance v4, Lcom/metamoji/lib/dialog/UtDialog$special$$inlined$enum$11;

    invoke-direct {v4, v1}, Lcom/metamoji/lib/dialog/UtDialog$special$$inlined$enum$11;-><init>(Ljava/lang/Enum;)V

    check-cast v4, Lkotlin/jvm/functions/Function1;

    .line 1673
    sget-object v1, Lcom/metamoji/lib/dialog/UtDialog$special$$inlined$enum$12;->INSTANCE:Lcom/metamoji/lib/dialog/UtDialog$special$$inlined$enum$12;

    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 1671
    invoke-direct {v2, v0, v3, v4, v1}, Lcom/metamoji/lib/dialog/UtBundleDelegate$GenericDelegate;-><init>(Lcom/metamoji/lib/dialog/UtBundleDelegate;Lkotlin/reflect/KClassifier;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    check-cast v2, Lkotlin/properties/ReadWriteProperty;

    .line 498
    iput-object v2, p0, Lcom/metamoji/lib/dialog/UtDialog;->parentVisibilityOption$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 560
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getBundle()Lcom/metamoji/lib/dialog/UtBundleDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/lib/dialog/UtBundleDelegate;->getStringNullable()Lkotlin/properties/ReadWriteProperty;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/lib/dialog/UtDialog;->privateTitle$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 612
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getBundle()Lcom/metamoji/lib/dialog/UtBundleDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/lib/dialog/UtBundleDelegate;->getIntZero()Lkotlin/properties/ReadWriteProperty;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/lib/dialog/UtDialog;->leftButtonText$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 613
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getBundle()Lcom/metamoji/lib/dialog/UtBundleDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/lib/dialog/UtBundleDelegate;->getBooleanFalse()Lkotlin/properties/ReadWriteProperty;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/lib/dialog/UtDialog;->leftButtonPositive$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 614
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getBundle()Lcom/metamoji/lib/dialog/UtBundleDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/lib/dialog/UtBundleDelegate;->getBooleanFalse()Lkotlin/properties/ReadWriteProperty;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/lib/dialog/UtDialog;->leftButtonBlue$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 620
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getBundle()Lcom/metamoji/lib/dialog/UtBundleDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/lib/dialog/UtBundleDelegate;->getIntZero()Lkotlin/properties/ReadWriteProperty;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/lib/dialog/UtDialog;->rightButtonText$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 621
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getBundle()Lcom/metamoji/lib/dialog/UtBundleDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/lib/dialog/UtBundleDelegate;->getBooleanFalse()Lkotlin/properties/ReadWriteProperty;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/lib/dialog/UtDialog;->rightButtonPositive$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 622
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getBundle()Lcom/metamoji/lib/dialog/UtBundleDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/lib/dialog/UtBundleDelegate;->getBooleanFalse()Lkotlin/properties/ReadWriteProperty;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/lib/dialog/UtDialog;->rightButtonBlue$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 675
    new-instance v0, Lcom/metamoji/lib/dialog/UtDialog$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0}, Lcom/metamoji/lib/dialog/UtDialog$$ExternalSyntheticLambda10;-><init>(Lcom/metamoji/lib/dialog/UtDialog;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/lib/dialog/UtDialog;->themedContext$delegate:Lkotlin/Lazy;

    .line 881
    new-instance v0, Lcom/metamoji/lib/dialog/UtDialog$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0}, Lcom/metamoji/lib/dialog/UtDialog$$ExternalSyntheticLambda11;-><init>(Lcom/metamoji/lib/dialog/UtDialog;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/lib/dialog/UtDialog;->dragInfo$delegate:Lkotlin/Lazy;

    .line 1189
    new-instance v0, Lcom/metamoji/lib/utils/CompatBackKeyDispatcher;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Lcom/metamoji/lib/utils/CompatBackKeyDispatcher;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Lcom/metamoji/lib/dialog/UtDialog;->compatBackKeyDispatcher:Lcom/metamoji/lib/utils/CompatBackKeyDispatcher;

    .line 1190
    sget-object v0, Lcom/metamoji/lib/dialog/UtDialogConfig;->INSTANCE:Lcom/metamoji/lib/dialog/UtDialogConfig;

    invoke-virtual {v0}, Lcom/metamoji/lib/dialog/UtDialogConfig;->getBaseBackInvokedDispatcherPriority()I

    move-result v0

    iput v0, p0, Lcom/metamoji/lib/dialog/UtDialog;->backInvokerPriority:I

    return-void
.end method

.method public static final synthetic access$getDragInfo(Lcom/metamoji/lib/dialog/UtDialog;)Lcom/metamoji/lib/dialog/UtDialog$DragInfo;
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getDragInfo()Lcom/metamoji/lib/dialog/UtDialog$DragInfo;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$resetDialogPosition(Lcom/metamoji/lib/dialog/UtDialog;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/metamoji/lib/dialog/UtDialog;->resetDialogPosition()V

    return-void
.end method

.method private final adjustByPan(ILandroid/view/View;)V
    .locals 5

    const-wide/16 v0, 0xc8

    if-lez p1, :cond_8

    if-eqz p2, :cond_2

    .line 1481
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    .line 1482
    :goto_0
    instance-of v2, p2, Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    .line 1483
    instance-of v2, p2, Landroid/widget/ScrollView;

    if-nez v2, :cond_1

    instance-of v2, p2, Landroidx/recyclerview/widget/RecyclerView;

    if-nez v2, :cond_1

    instance-of v2, p2, Landroid/widget/ListView;

    if-eqz v2, :cond_0

    goto :goto_1

    .line 1487
    :cond_0
    check-cast p2, Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    goto :goto_0

    .line 1484
    :cond_1
    :goto_1
    check-cast p2, Landroid/view/ViewGroup;

    goto :goto_2

    :cond_2
    const/4 p2, 0x0

    :goto_2
    if-eqz p2, :cond_6

    .line 1493
    invoke-direct {p0, p2}, Lcom/metamoji/lib/dialog/UtDialog;->getMaxScrollAmount(Landroid/view/ViewGroup;)I

    move-result v2

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-lez v2, :cond_6

    .line 1496
    instance-of v3, p2, Landroid/widget/ScrollView;

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    check-cast p2, Landroid/widget/ScrollView;

    invoke-virtual {p2, v4, v2}, Landroid/widget/ScrollView;->smoothScrollBy(II)V

    goto :goto_3

    .line 1497
    :cond_3
    instance-of v3, p2, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v3, :cond_4

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, v4, v2}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(II)V

    goto :goto_3

    .line 1498
    :cond_4
    instance-of v3, p2, Landroid/widget/ListView;

    if-eqz v3, :cond_5

    check-cast p2, Landroid/widget/ListView;

    invoke-virtual {p2, v2}, Landroid/widget/ListView;->smoothScrollByOffset(I)V

    :cond_5
    :goto_3
    sub-int/2addr p1, v2

    :cond_6
    if-lez p1, :cond_7

    .line 1505
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getRootView()Landroid/view/ViewGroup;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    int-to-float p1, p1

    neg-float p1, p1

    .line 1506
    invoke-virtual {p2, p1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 1507
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 1508
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_7
    return-void

    .line 1511
    :cond_8
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getRootView()Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result p1

    const/4 p2, 0x0

    cmpg-float p1, p1, p2

    if-nez p1, :cond_9

    return-void

    .line 1512
    :cond_9
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getRootView()Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 1513
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 1514
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 1515
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private final adjustByResize(I)V
    .locals 3

    .line 1457
    iget-object v0, p0, Lcom/metamoji/lib/dialog/UtDialog;->paddingAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1459
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getRootView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v0

    const/4 v1, 0x0

    .line 1460
    invoke-static {p1, v1}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v1

    if-ne v0, p1, :cond_1

    return-void

    .line 1463
    :cond_1
    filled-new-array {v0, v1}, [I

    move-result-object v0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-lez p1, :cond_2

    const-wide/16 v1, 0xc8

    goto :goto_0

    :cond_2
    const-wide/16 v1, 0x96

    .line 1464
    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    if-lez p1, :cond_3

    .line 1465
    new-instance p1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    goto :goto_1

    :cond_3
    new-instance p1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    :goto_1
    check-cast p1, Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1466
    new-instance p1, Lcom/metamoji/lib/dialog/UtDialog$$ExternalSyntheticLambda12;

    invoke-direct {p1, p0}, Lcom/metamoji/lib/dialog/UtDialog$$ExternalSyntheticLambda12;-><init>(Lcom/metamoji/lib/dialog/UtDialog;)V

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1470
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 1463
    iput-object v0, p0, Lcom/metamoji/lib/dialog/UtDialog;->paddingAnimator:Landroid/animation/ValueAnimator;

    return-void
.end method

.method static final adjustByResize$lambda$20$lambda$19(Lcom/metamoji/lib/dialog/UtDialog;Landroid/animation/ValueAnimator;)V
    .locals 3

    const-string v0, "animator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1467
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 1468
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getRootView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getRootView()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingStart()I

    move-result v1

    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getRootView()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getRootView()Landroid/view/ViewGroup;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingEnd()I

    move-result p0

    invoke-virtual {v0, v1, v2, p0, p1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    return-void
.end method

.method private final adjustContents(ILandroid/view/View;)V
    .locals 2

    .line 1448
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getAdjustContentsStrategy()Lcom/metamoji/lib/dialog/UtDialog$KeyboardAdjustStrategy;

    move-result-object v0

    sget-object v1, Lcom/metamoji/lib/dialog/UtDialog$WhenMappings;->$EnumSwitchMapping$2:[I

    invoke-virtual {v0}, Lcom/metamoji/lib/dialog/UtDialog$KeyboardAdjustStrategy;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 p2, 0x2

    if-ne v0, p2, :cond_0

    .line 1450
    invoke-direct {p0, p1}, Lcom/metamoji/lib/dialog/UtDialog;->adjustByResize(I)V

    return-void

    .line 1448
    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 1449
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/metamoji/lib/dialog/UtDialog;->adjustByPan(ILandroid/view/View;)V

    return-void
.end method

.method private final adjustDialogPosition(Ljava/lang/Float;Ljava/lang/Float;)V
    .locals 1

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 1060
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getDragInfo()Lcom/metamoji/lib/dialog/UtDialog$DragInfo;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/metamoji/lib/dialog/UtDialog$DragInfo;->adjustPosition(Ljava/lang/Float;Ljava/lang/Float;)V

    return-void
.end method

.method static final dragInfo_delegate$lambda$5(Lcom/metamoji/lib/dialog/UtDialog;)Lcom/metamoji/lib/dialog/UtDialog$DragInfo;
    .locals 1

    .line 881
    new-instance v0, Lcom/metamoji/lib/dialog/UtDialog$DragInfo;

    invoke-direct {v0, p0}, Lcom/metamoji/lib/dialog/UtDialog$DragInfo;-><init>(Lcom/metamoji/lib/dialog/UtDialog;)V

    return-object v0
.end method

.method private final enableDrag()V
    .locals 3

    .line 888
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getDraggable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 889
    :cond_0
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/metamoji/lib/dialog/UtDialog$enableDrag$gestureDetector$1;

    invoke-direct {v2, p0}, Lcom/metamoji/lib/dialog/UtDialog$enableDrag$gestureDetector$1;-><init>(Lcom/metamoji/lib/dialog/UtDialog;)V

    check-cast v2, Landroid/view/GestureDetector$OnGestureListener;

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 897
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getRootView()Landroid/view/ViewGroup;

    move-result-object v1

    sget v2, Lcom/metamoji/lib/dialog/R$id;->header:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/metamoji/lib/dialog/UtDialog$$ExternalSyntheticLambda14;

    invoke-direct {v2, v0, p0}, Lcom/metamoji/lib/dialog/UtDialog$$ExternalSyntheticLambda14;-><init>(Landroid/view/GestureDetector;Lcom/metamoji/lib/dialog/UtDialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method static final enableDrag$lambda$6(Landroid/view/GestureDetector;Lcom/metamoji/lib/dialog/UtDialog;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 898
    invoke-virtual {p0, p3}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 899
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result p0

    if-nez p0, :cond_0

    .line 900
    invoke-direct {p1}, Lcom/metamoji/lib/dialog/UtDialog;->getDragInfo()Lcom/metamoji/lib/dialog/UtDialog$DragInfo;

    move-result-object p0

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p3}, Lcom/metamoji/lib/dialog/UtDialog$DragInfo;->start(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 901
    :cond_0
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result p0

    const/4 p2, 0x2

    if-ne p0, p2, :cond_1

    .line 902
    invoke-direct {p1}, Lcom/metamoji/lib/dialog/UtDialog;->getDragInfo()Lcom/metamoji/lib/dialog/UtDialog$DragInfo;

    move-result-object p0

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p3}, Lcom/metamoji/lib/dialog/UtDialog$DragInfo;->move(Landroid/view/MotionEvent;)V

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic enableFocusManagement$default(Lcom/metamoji/lib/dialog/UtDialog;ZLcom/metamoji/lib/dialog/UtFocusManager$UseKey;ILjava/lang/Object;)Lcom/metamoji/lib/dialog/UtFocusManager;
    .locals 0

    if-nez p4, :cond_2

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    const/4 p1, 0x1

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const/4 p2, 0x0

    .line 454
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/lib/dialog/UtDialog;->enableFocusManagement(ZLcom/metamoji/lib/dialog/UtFocusManager$UseKey;)Lcom/metamoji/lib/dialog/UtFocusManager;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: enableFocusManagement"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final fadeIn(ZLkotlin/jvm/functions/Function0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 514
    iget-object v0, p0, Lcom/metamoji/lib/dialog/UtDialog;->rootView:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    if-eqz p2, :cond_2

    .line 515
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 517
    invoke-direct {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getFadeInAnimation()Lcom/metamoji/lib/dialog/UtFadeAnimation;

    move-result-object p1

    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getRootView()Landroid/view/ViewGroup;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    new-instance v1, Lcom/metamoji/lib/dialog/UtDialog$$ExternalSyntheticLambda7;

    invoke-direct {v1, p2}, Lcom/metamoji/lib/dialog/UtDialog$$ExternalSyntheticLambda7;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {p1, v0, v1}, Lcom/metamoji/lib/dialog/UtFadeAnimation;->start(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    return-void

    :cond_1
    const/4 p1, 0x1

    .line 521
    invoke-virtual {p0, p1}, Lcom/metamoji/lib/dialog/UtDialog;->setVisible(Z)V

    if-eqz p2, :cond_2

    .line 522
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method static synthetic fadeIn$default(Lcom/metamoji/lib/dialog/UtDialog;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 513
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/metamoji/lib/dialog/UtDialog;->fadeIn(ZLkotlin/jvm/functions/Function0;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: fadeIn"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static final fadeIn$lambda$1(Lkotlin/jvm/functions/Function0;)Lkotlin/Unit;
    .locals 0

    if-eqz p0, :cond_0

    .line 518
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 519
    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final fadeOut(ZLkotlin/jvm/functions/Function0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 527
    iget-object v0, p0, Lcom/metamoji/lib/dialog/UtDialog;->rootView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getVisible()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 530
    invoke-direct {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getFadeOutAnimation()Lcom/metamoji/lib/dialog/UtFadeAnimation;

    move-result-object p1

    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getRootView()Landroid/view/ViewGroup;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    new-instance v1, Lcom/metamoji/lib/dialog/UtDialog$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0, p2}, Lcom/metamoji/lib/dialog/UtDialog$$ExternalSyntheticLambda13;-><init>(Lcom/metamoji/lib/dialog/UtDialog;Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {p1, v0, v1}, Lcom/metamoji/lib/dialog/UtFadeAnimation;->start(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    return-void

    :cond_1
    const/4 p1, 0x0

    .line 535
    invoke-virtual {p0, p1}, Lcom/metamoji/lib/dialog/UtDialog;->setVisible(Z)V

    if-eqz p2, :cond_3

    .line 536
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void

    :cond_2
    :goto_0
    if-eqz p2, :cond_3

    .line 528
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_3
    return-void
.end method

.method static synthetic fadeOut$default(Lcom/metamoji/lib/dialog/UtDialog;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 526
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/metamoji/lib/dialog/UtDialog;->fadeOut(ZLkotlin/jvm/functions/Function0;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: fadeOut"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static final fadeOut$lambda$2(Lcom/metamoji/lib/dialog/UtDialog;Lkotlin/jvm/functions/Function0;)Lkotlin/Unit;
    .locals 1

    const/4 v0, 0x0

    .line 531
    invoke-virtual {p0, v0}, Lcom/metamoji/lib/dialog/UtDialog;->setVisible(Z)V

    if-eqz p1, :cond_0

    .line 532
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 533
    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final getDragInfo()Lcom/metamoji/lib/dialog/UtDialog$DragInfo;
    .locals 1

    .line 881
    iget-object v0, p0, Lcom/metamoji/lib/dialog/UtDialog;->dragInfo$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/lib/dialog/UtDialog$DragInfo;

    return-object v0
.end method

.method private final getFadeInAnimation()Lcom/metamoji/lib/dialog/UtFadeAnimation;
    .locals 4

    .line 510
    new-instance v0, Lcom/metamoji/lib/dialog/UtFadeAnimation;

    sget-object v1, Lcom/metamoji/lib/dialog/UtDialogConfig;->INSTANCE:Lcom/metamoji/lib/dialog/UtDialogConfig;

    invoke-virtual {v1}, Lcom/metamoji/lib/dialog/UtDialogConfig;->getFadeInDuration()J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v3, v1, v2}, Lcom/metamoji/lib/dialog/UtFadeAnimation;-><init>(ZJ)V

    return-object v0
.end method

.method private final getFadeOutAnimation()Lcom/metamoji/lib/dialog/UtFadeAnimation;
    .locals 4

    .line 511
    new-instance v0, Lcom/metamoji/lib/dialog/UtFadeAnimation;

    sget-object v1, Lcom/metamoji/lib/dialog/UtDialogConfig;->INSTANCE:Lcom/metamoji/lib/dialog/UtDialogConfig;

    invoke-virtual {v1}, Lcom/metamoji/lib/dialog/UtDialogConfig;->getFadeOutDuraton()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Lcom/metamoji/lib/dialog/UtFadeAnimation;-><init>(ZJ)V

    return-object v0
.end method

.method private final getHasGuardColor()Z
    .locals 2

    .line 359
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getGuardColor()I

    move-result v0

    sget-object v1, Lcom/metamoji/lib/dialog/UtDialog$GuardColor;->INVALID:Lcom/metamoji/lib/dialog/UtDialog$GuardColor;

    invoke-virtual {v1}, Lcom/metamoji/lib/dialog/UtDialog$GuardColor;->getColor()I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static synthetic getHasLeftButton$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getHasRightButton$annotations()V
    .locals 0

    return-void
.end method

.method private final getLeftButtonBlue()Z
    .locals 3

    .line 614
    iget-object v0, p0, Lcom/metamoji/lib/dialog/UtDialog;->leftButtonBlue$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcom/metamoji/lib/dialog/UtDialog;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x18

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private final getLeftButtonPositive()Z
    .locals 3

    .line 613
    iget-object v0, p0, Lcom/metamoji/lib/dialog/UtDialog;->leftButtonPositive$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcom/metamoji/lib/dialog/UtDialog;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x17

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private final getLeftButtonText()I
    .locals 3

    .line 612
    iget-object v0, p0, Lcom/metamoji/lib/dialog/UtDialog;->leftButtonText$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcom/metamoji/lib/dialog/UtDialog;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x16

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method private final getMaxScrollAmount(Landroid/view/ViewGroup;)I
    .locals 3

    .line 1404
    instance-of v0, p1, Landroid/widget/ScrollView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1405
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 1406
    :goto_0
    check-cast p1, Landroid/widget/ScrollView;

    invoke-virtual {p1}, Landroid/widget/ScrollView;->getHeight()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p1}, Landroid/widget/ScrollView;->getScrollY()I

    move-result p1

    sub-int/2addr v0, p1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1

    .line 1408
    :cond_1
    instance-of v0, p1, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_3

    .line 1409
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollRange()I

    move-result v0

    if-lez v0, :cond_2

    .line 1410
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollRange()I

    move-result v0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollExtent()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result p1

    sub-int/2addr v0, p1

    return v0

    :cond_2
    return v1

    .line 1415
    :cond_3
    instance-of v0, p1, Landroid/widget/ListView;

    if-eqz v0, :cond_4

    .line 1416
    check-cast p1, Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v0

    if-ltz v0, :cond_4

    .line 1417
    invoke-virtual {p1}, Landroid/widget/ListView;->getCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    if-ge v0, p1, :cond_4

    const p1, 0x3fffffff    # 1.9999999f

    return p1

    :cond_4
    return v1
.end method

.method private final getPrivateTitle()Ljava/lang/String;
    .locals 3

    .line 560
    iget-object v0, p0, Lcom/metamoji/lib/dialog/UtDialog;->privateTitle$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcom/metamoji/lib/dialog/UtDialog;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x15

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private final getRightButtonBlue()Z
    .locals 3

    .line 622
    iget-object v0, p0, Lcom/metamoji/lib/dialog/UtDialog;->rightButtonBlue$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcom/metamoji/lib/dialog/UtDialog;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x1b

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private final getRightButtonPositive()Z
    .locals 3

    .line 621
    iget-object v0, p0, Lcom/metamoji/lib/dialog/UtDialog;->rightButtonPositive$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcom/metamoji/lib/dialog/UtDialog;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x1a

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private final getRightButtonText()I
    .locals 3

    .line 620
    iget-object v0, p0, Lcom/metamoji/lib/dialog/UtDialog;->rightButtonText$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcom/metamoji/lib/dialog/UtDialog;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x19

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method private final getThemedContext()Landroid/content/Context;
    .locals 1

    .line 675
    iget-object v0, p0, Lcom/metamoji/lib/dialog/UtDialog;->themedContext$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    return-object v0
.end method

.method static final handleKeyEvent$lambda$21(Lcom/metamoji/lib/dialog/UtDialog;)Landroid/view/View;
    .locals 0

    .line 1582
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getRootView()Landroid/view/ViewGroup;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->findFocus()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private final idToButtonType(IZ)Lcom/metamoji/lib/dialog/UtDialog$BuiltInButtonType;
    .locals 1

    .line 597
    sget-object v0, Lcom/metamoji/lib/dialog/UtStandardString;->OK:Lcom/metamoji/lib/dialog/UtStandardString;

    invoke-virtual {v0}, Lcom/metamoji/lib/dialog/UtStandardString;->getId()I

    move-result v0

    if-ne p1, v0, :cond_0

    sget-object p1, Lcom/metamoji/lib/dialog/UtDialog$BuiltInButtonType;->OK:Lcom/metamoji/lib/dialog/UtDialog$BuiltInButtonType;

    return-object p1

    .line 598
    :cond_0
    sget-object v0, Lcom/metamoji/lib/dialog/UtStandardString;->DONE:Lcom/metamoji/lib/dialog/UtStandardString;

    invoke-virtual {v0}, Lcom/metamoji/lib/dialog/UtStandardString;->getId()I

    move-result v0

    if-ne p1, v0, :cond_1

    sget-object p1, Lcom/metamoji/lib/dialog/UtDialog$BuiltInButtonType;->DONE:Lcom/metamoji/lib/dialog/UtDialog$BuiltInButtonType;

    return-object p1

    .line 599
    :cond_1
    sget-object v0, Lcom/metamoji/lib/dialog/UtStandardString;->CLOSE:Lcom/metamoji/lib/dialog/UtStandardString;

    invoke-virtual {v0}, Lcom/metamoji/lib/dialog/UtStandardString;->getId()I

    move-result v0

    if-ne p1, v0, :cond_3

    if-eqz p2, :cond_2

    sget-object p1, Lcom/metamoji/lib/dialog/UtDialog$BuiltInButtonType;->CLOSE:Lcom/metamoji/lib/dialog/UtDialog$BuiltInButtonType;

    return-object p1

    :cond_2
    sget-object p1, Lcom/metamoji/lib/dialog/UtDialog$BuiltInButtonType;->CLOSE_LEFT:Lcom/metamoji/lib/dialog/UtDialog$BuiltInButtonType;

    return-object p1

    .line 600
    :cond_3
    sget-object p2, Lcom/metamoji/lib/dialog/UtStandardString;->CANCEL:Lcom/metamoji/lib/dialog/UtStandardString;

    invoke-virtual {p2}, Lcom/metamoji/lib/dialog/UtStandardString;->getId()I

    move-result p2

    if-ne p1, p2, :cond_4

    sget-object p1, Lcom/metamoji/lib/dialog/UtDialog$BuiltInButtonType;->CANCEL:Lcom/metamoji/lib/dialog/UtDialog$BuiltInButtonType;

    return-object p1

    .line 601
    :cond_4
    sget-object p2, Lcom/metamoji/lib/dialog/UtStandardString;->BACK:Lcom/metamoji/lib/dialog/UtStandardString;

    invoke-virtual {p2}, Lcom/metamoji/lib/dialog/UtStandardString;->getId()I

    move-result p2

    if-ne p1, p2, :cond_5

    sget-object p1, Lcom/metamoji/lib/dialog/UtDialog$BuiltInButtonType;->BACK:Lcom/metamoji/lib/dialog/UtDialog$BuiltInButtonType;

    return-object p1

    .line 602
    :cond_5
    sget-object p1, Lcom/metamoji/lib/dialog/UtDialog$BuiltInButtonType;->NONE:Lcom/metamoji/lib/dialog/UtDialog$BuiltInButtonType;

    return-object p1
.end method

.method static final internalCloseDialog$lambda$17(Lcom/metamoji/lib/dialog/UtDialog;)Lkotlin/Unit;
    .locals 0

    .line 1350
    invoke-super {p0}, Lcom/metamoji/lib/dialog/UtDialogBase;->internalCloseDialog()V

    .line 1351
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final managedGuardColor()I
    .locals 1

    .line 390
    sget-object v0, Lcom/metamoji/lib/dialog/UtDialogConfig;->INSTANCE:Lcom/metamoji/lib/dialog/UtDialogConfig;

    invoke-virtual {v0}, Lcom/metamoji/lib/dialog/UtDialogConfig;->getSolidBackgroundOnPhone()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->isPhone()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/metamoji/lib/dialog/UtDialog$GuardColor;->SOLID_GRAY:Lcom/metamoji/lib/dialog/UtDialog$GuardColor;

    invoke-virtual {v0}, Lcom/metamoji/lib/dialog/UtDialog$GuardColor;->getColor()I

    move-result v0

    return v0

    .line 391
    :cond_0
    invoke-direct {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getHasGuardColor()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getGuardColor()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/metamoji/lib/dialog/UtDialog;->resolveColor(I)I

    move-result v0

    return v0

    .line 392
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getCancellable()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/metamoji/lib/dialog/UtDialogConfig;->INSTANCE:Lcom/metamoji/lib/dialog/UtDialogConfig;

    invoke-virtual {v0}, Lcom/metamoji/lib/dialog/UtDialogConfig;->getDefaultGuardColor()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/metamoji/lib/dialog/UtDialog;->resolveColor(I)I

    move-result v0

    return v0

    .line 393
    :cond_2
    sget-object v0, Lcom/metamoji/lib/dialog/UtDialogConfig;->INSTANCE:Lcom/metamoji/lib/dialog/UtDialogConfig;

    invoke-virtual {v0}, Lcom/metamoji/lib/dialog/UtDialogConfig;->getDefaultGuardColorOfCancellableDialog()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/metamoji/lib/dialog/UtDialog;->resolveColor(I)I

    move-result v0

    return v0
.end method

.method private final onBodyViewSizeChanged()V
    .locals 3

    .line 1088
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getHeightOption()Lcom/metamoji/lib/dialog/UtDialog$HeightOption;

    move-result-object v0

    sget-object v1, Lcom/metamoji/lib/dialog/UtDialog$HeightOption;->AUTO_SCROLL:Lcom/metamoji/lib/dialog/UtDialog$HeightOption;

    if-ne v0, v1, :cond_0

    .line 1089
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getBodyContainer()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 1090
    invoke-direct {p0, v0}, Lcom/metamoji/lib/dialog/UtDialog;->updateDynamicHeight(Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1092
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/metamoji/lib/dialog/UtDialog$$ExternalSyntheticLambda9;

    invoke-direct {v2, p0, v0}, Lcom/metamoji/lib/dialog/UtDialog$$ExternalSyntheticLambda9;-><init>(Lcom/metamoji/lib/dialog/UtDialog;Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method static final onBodyViewSizeChanged$lambda$10(Lcom/metamoji/lib/dialog/UtDialog;Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;)V
    .locals 0

    .line 1093
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getBodyContainer()Landroid/view/ViewGroup;

    move-result-object p0

    check-cast p1, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private final onContainerHeightChanged()V
    .locals 2

    .line 1077
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getBodyContainer()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 1078
    invoke-direct {p0, v0}, Lcom/metamoji/lib/dialog/UtDialog;->updateDynamicHeight(Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1079
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getBodyContainer()Landroid/view/ViewGroup;

    move-result-object v1

    check-cast v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method static final onResume$lambda$16(Lcom/metamoji/lib/dialog/UtDialog;)Landroid/view/View;
    .locals 1

    .line 1336
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getRightButton()Landroid/widget/Button;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1679
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1336
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getRightButton()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1337
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getRightButton()Landroid/widget/Button;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    return-object p0

    .line 1339
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getLeftButton()Landroid/widget/Button;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    return-object p0
.end method

.method private final onRootViewSizeChanged()V
    .locals 3

    .line 1068
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getBodyContainer()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 1069
    invoke-direct {p0, v0}, Lcom/metamoji/lib/dialog/UtDialog;->updateDynamicHeight(Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;)Z

    move-result v1

    .line 1070
    invoke-direct {p0, v0}, Lcom/metamoji/lib/dialog/UtDialog;->updateDynamicWidth(Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;)Z

    move-result v2

    if-nez v1, :cond_1

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 1072
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getBodyContainer()Landroid/view/ViewGroup;

    move-result-object v1

    check-cast v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private final prepareSoftwareKeyboardObserver()V
    .locals 4

    .line 1391
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getAdjustContentForKeyboard()Lcom/metamoji/lib/dialog/UtDialog$KeyboardAdjustMode;

    move-result-object v0

    sget-object v1, Lcom/metamoji/lib/dialog/UtDialog$KeyboardAdjustMode;->AUTO:Lcom/metamoji/lib/dialog/UtDialog$KeyboardAdjustMode;

    if-ne v0, v1, :cond_1

    .line 1392
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->isDialog()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/metamoji/lib/dialog/UtDialog$KeyboardAdjustMode;->BY_GLOBAL_LAYOUT:Lcom/metamoji/lib/dialog/UtDialog$KeyboardAdjustMode;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/metamoji/lib/dialog/UtDialog$KeyboardAdjustMode;->BY_WINDOW_INSETS:Lcom/metamoji/lib/dialog/UtDialog$KeyboardAdjustMode;

    goto :goto_0

    .line 1393
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getAdjustContentForKeyboard()Lcom/metamoji/lib/dialog/UtDialog$KeyboardAdjustMode;

    move-result-object v0

    .line 1394
    :goto_0
    iget-object v1, p0, Lcom/metamoji/lib/dialog/UtDialog;->keyboardObserver:Lcom/metamoji/lib/dialog/ISoftwareKeyboardObserver;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lcom/metamoji/lib/dialog/ISoftwareKeyboardObserver;->dispose()V

    .line 1395
    :cond_2
    sget-object v1, Lcom/metamoji/lib/dialog/UtDialog$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v0}, Lcom/metamoji/lib/dialog/UtDialog$KeyboardAdjustMode;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v0, 0x0

    goto :goto_1

    .line 1397
    :cond_3
    sget-object v0, Lcom/metamoji/lib/dialog/UtSoftwareKeyboardObserver;->Companion:Lcom/metamoji/lib/dialog/UtSoftwareKeyboardObserver$Companion;

    move-object v1, p0

    check-cast v1, Landroidx/lifecycle/LifecycleOwner;

    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const-string v3, "requireActivity(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/lib/dialog/UtSoftwareKeyboardObserver$Companion;->byGlobalLayout(Landroidx/lifecycle/LifecycleOwner;Landroidx/fragment/app/FragmentActivity;)Lcom/metamoji/lib/dialog/UtSoftwareKeyboardObserver;

    move-result-object v0

    new-instance v1, Lcom/metamoji/lib/dialog/UtDialog$prepareSoftwareKeyboardObserver$2;

    invoke-direct {v1, p0}, Lcom/metamoji/lib/dialog/UtDialog$prepareSoftwareKeyboardObserver$2;-><init>(Ljava/lang/Object;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-virtual {v0, v1}, Lcom/metamoji/lib/dialog/UtSoftwareKeyboardObserver;->observe(Lkotlin/jvm/functions/Function2;)Lcom/metamoji/lib/dialog/ISoftwareKeyboardObserver;

    move-result-object v0

    goto :goto_1

    .line 1396
    :cond_4
    sget-object v0, Lcom/metamoji/lib/dialog/UtSoftwareKeyboardObserver;->Companion:Lcom/metamoji/lib/dialog/UtSoftwareKeyboardObserver$Companion;

    move-object v1, p0

    check-cast v1, Landroidx/lifecycle/LifecycleOwner;

    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getBodyContainer()Landroid/view/ViewGroup;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/lib/dialog/UtSoftwareKeyboardObserver$Companion;->byWindowInsets(Landroidx/lifecycle/LifecycleOwner;Landroid/view/View;)Lcom/metamoji/lib/dialog/UtSoftwareKeyboardObserver;

    move-result-object v0

    new-instance v1, Lcom/metamoji/lib/dialog/UtDialog$prepareSoftwareKeyboardObserver$1;

    invoke-direct {v1, p0}, Lcom/metamoji/lib/dialog/UtDialog$prepareSoftwareKeyboardObserver$1;-><init>(Ljava/lang/Object;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-virtual {v0, v1}, Lcom/metamoji/lib/dialog/UtSoftwareKeyboardObserver;->observe(Lkotlin/jvm/functions/Function2;)Lcom/metamoji/lib/dialog/ISoftwareKeyboardObserver;

    move-result-object v0

    .line 1395
    :goto_1
    iput-object v0, p0, Lcom/metamoji/lib/dialog/UtDialog;->keyboardObserver:Lcom/metamoji/lib/dialog/ISoftwareKeyboardObserver;

    return-void
.end method

.method private final resetDialogPosition()V
    .locals 2

    .line 872
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getDialogView()Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTranslationX(F)V

    .line 873
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getDialogView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTranslationY(F)V

    const/4 v0, 0x0

    .line 874
    invoke-virtual {p0, v0}, Lcom/metamoji/lib/dialog/UtDialog;->setCustomPositionX(Ljava/lang/Float;)V

    .line 875
    invoke-virtual {p0, v0}, Lcom/metamoji/lib/dialog/UtDialog;->setCustomPositionY(Ljava/lang/Float;)V

    return-void
.end method

.method public static synthetic setLeftButton$default(Lcom/metamoji/lib/dialog/UtDialog;IZZILjava/lang/Object;)V
    .locals 0

    if-nez p5, :cond_2

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    move p3, p2

    .line 635
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/metamoji/lib/dialog/UtDialog;->setLeftButton(IZZ)V

    return-void

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: setLeftButton"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final setLeftButtonBlue(Z)V
    .locals 3

    .line 614
    iget-object v0, p0, Lcom/metamoji/lib/dialog/UtDialog;->leftButtonBlue$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcom/metamoji/lib/dialog/UtDialog;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x18

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, p0, v1, p1}, Lkotlin/properties/ReadWriteProperty;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method private final setLeftButtonPositive(Z)V
    .locals 3

    .line 613
    iget-object v0, p0, Lcom/metamoji/lib/dialog/UtDialog;->leftButtonPositive$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcom/metamoji/lib/dialog/UtDialog;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x17

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, p0, v1, p1}, Lkotlin/properties/ReadWriteProperty;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method private final setLeftButtonText(I)V
    .locals 3

    .line 612
    iget-object v0, p0, Lcom/metamoji/lib/dialog/UtDialog;->leftButtonText$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcom/metamoji/lib/dialog/UtDialog;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x16

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p0, v1, p1}, Lkotlin/properties/ReadWriteProperty;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method private final setPrivateTitle(Ljava/lang/String;)V
    .locals 3

    .line 560
    iget-object v0, p0, Lcom/metamoji/lib/dialog/UtDialog;->privateTitle$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcom/metamoji/lib/dialog/UtDialog;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x15

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1, p1}, Lkotlin/properties/ReadWriteProperty;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic setRightButton$default(Lcom/metamoji/lib/dialog/UtDialog;IZZILjava/lang/Object;)V
    .locals 0

    if-nez p5, :cond_2

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    move p3, p2

    .line 659
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/metamoji/lib/dialog/UtDialog;->setRightButton(IZZ)V

    return-void

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: setRightButton"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final setRightButtonBlue(Z)V
    .locals 3

    .line 622
    iget-object v0, p0, Lcom/metamoji/lib/dialog/UtDialog;->rightButtonBlue$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcom/metamoji/lib/dialog/UtDialog;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x1b

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, p0, v1, p1}, Lkotlin/properties/ReadWriteProperty;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method private final setRightButtonPositive(Z)V
    .locals 3

    .line 621
    iget-object v0, p0, Lcom/metamoji/lib/dialog/UtDialog;->rightButtonPositive$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcom/metamoji/lib/dialog/UtDialog;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x1a

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, p0, v1, p1}, Lkotlin/properties/ReadWriteProperty;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method private final setRightButtonText(I)V
    .locals 3

    .line 620
    iget-object v0, p0, Lcom/metamoji/lib/dialog/UtDialog;->rightButtonText$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcom/metamoji/lib/dialog/UtDialog;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x19

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p0, v1, p1}, Lkotlin/properties/ReadWriteProperty;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method private final setupDynamicSize()V
    .locals 2

    .line 981
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getWidthOption()Lcom/metamoji/lib/dialog/UtDialog$WidthOption;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/lib/dialog/UtDialog$WidthOption;->isDynamicSizing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getHeightOption()Lcom/metamoji/lib/dialog/UtDialog$HeightOption;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/lib/dialog/UtDialog$HeightOption;->isDynamicSizing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getDraggable()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getGravityOption()Lcom/metamoji/lib/dialog/UtDialog$GravityOption;

    move-result-object v0

    sget-object v1, Lcom/metamoji/lib/dialog/UtDialog$GravityOption;->CUSTOM:Lcom/metamoji/lib/dialog/UtDialog$GravityOption;

    if-ne v0, v1, :cond_1

    .line 983
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getRootView()Landroid/view/ViewGroup;

    move-result-object v0

    new-instance v1, Lcom/metamoji/lib/dialog/UtDialog$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/metamoji/lib/dialog/UtDialog$$ExternalSyntheticLambda3;-><init>(Lcom/metamoji/lib/dialog/UtDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 989
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getRefContainerView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/metamoji/lib/dialog/UtDialog$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/metamoji/lib/dialog/UtDialog$$ExternalSyntheticLambda4;-><init>(Lcom/metamoji/lib/dialog/UtDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 996
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getHeightOption()Lcom/metamoji/lib/dialog/UtDialog$HeightOption;

    move-result-object v0

    sget-object v1, Lcom/metamoji/lib/dialog/UtDialog$HeightOption;->AUTO_SCROLL:Lcom/metamoji/lib/dialog/UtDialog$HeightOption;

    if-ne v0, v1, :cond_2

    .line 998
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getBodyView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/metamoji/lib/dialog/UtDialog$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/metamoji/lib/dialog/UtDialog$$ExternalSyntheticLambda5;-><init>(Lcom/metamoji/lib/dialog/UtDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_2
    return-void
.end method

.method static final setupDynamicSize$lambda$7(Lcom/metamoji/lib/dialog/UtDialog;Landroid/view/View;IIIIIIII)V
    .locals 0

    sub-int/2addr p8, p6

    sub-int/2addr p4, p2

    if-ne p8, p4, :cond_0

    sub-int/2addr p9, p7

    sub-int/2addr p5, p3

    if-eq p9, p5, :cond_1

    .line 985
    :cond_0
    invoke-direct {p0}, Lcom/metamoji/lib/dialog/UtDialog;->onRootViewSizeChanged()V

    .line 987
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getCustomPositionX()Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getCustomPositionY()Ljava/lang/Float;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/metamoji/lib/dialog/UtDialog;->adjustDialogPosition(Ljava/lang/Float;Ljava/lang/Float;)V

    return-void
.end method

.method static final setupDynamicSize$lambda$8(Lcom/metamoji/lib/dialog/UtDialog;Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 990
    sget-object p1, Lcom/metamoji/lib/dialog/UtDialogBase;->Companion:Lcom/metamoji/lib/dialog/UtDialogBase$Companion;

    invoke-virtual {p1}, Lcom/metamoji/lib/dialog/UtDialogBase$Companion;->getLogger()Lcom/metamoji/lib/utils/UtLog;

    move-result-object p1

    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getDialogView()Landroid/view/ViewGroup;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getX()F

    move-result p3

    new-instance p5, Ljava/lang/StringBuilder;

    const-string p7, "x:org "

    invoke-direct {p5, p7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p5, " layoutChanged"

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/metamoji/lib/utils/UtLog;->debug(Ljava/lang/String;)V

    sub-int/2addr p8, p6

    sub-int/2addr p4, p2

    if-eq p8, p4, :cond_0

    .line 992
    invoke-direct {p0}, Lcom/metamoji/lib/dialog/UtDialog;->onContainerHeightChanged()V

    :cond_0
    return-void
.end method

.method static final setupDynamicSize$lambda$9(Lcom/metamoji/lib/dialog/UtDialog;Landroid/view/View;IIIIIIII)V
    .locals 0

    sub-int/2addr p8, p6

    sub-int/2addr p4, p2

    if-ne p8, p4, :cond_1

    sub-int/2addr p9, p7

    sub-int/2addr p5, p3

    if-eq p9, p5, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 1000
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/metamoji/lib/dialog/UtDialog;->onBodyViewSizeChanged()V

    return-void
.end method

.method private final setupFixedSize()V
    .locals 5

    .line 962
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getWidthOption()Lcom/metamoji/lib/dialog/UtDialog$WidthOption;

    move-result-object v0

    sget-object v1, Lcom/metamoji/lib/dialog/UtDialog$WidthOption;->FIXED:Lcom/metamoji/lib/dialog/UtDialog$WidthOption;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getWidthHint()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v2

    .line 963
    :goto_0
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getHeightOption()Lcom/metamoji/lib/dialog/UtDialog$HeightOption;

    move-result-object v1

    sget-object v3, Lcom/metamoji/lib/dialog/UtDialog$HeightOption;->FIXED:Lcom/metamoji/lib/dialog/UtDialog$HeightOption;

    if-ne v1, v3, :cond_1

    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getHeightHint()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_1
    if-nez v0, :cond_2

    if-nez v2, :cond_2

    goto :goto_1

    .line 966
    :cond_2
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getBodyContainer()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-nez v1, :cond_3

    :goto_1
    return-void

    .line 967
    :cond_3
    const-string v3, "requireContext(...)"

    if-eqz v0, :cond_4

    .line 968
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->requireContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v4, v0}, Lcom/metamoji/lib/utils/ViewExtKt;->dp2px(Landroid/content/Context;I)I

    move-result v0

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_4
    if-eqz v2, :cond_5

    .line 971
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v0, v2}, Lcom/metamoji/lib/utils/ViewExtKt;->dp2px(Landroid/content/Context;I)I

    move-result v0

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 973
    :cond_5
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getBodyContainer()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private final setupLayout()V
    .locals 5

    .line 946
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getDialogView()Landroid/view/ViewGroup;

    move-result-object v0

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getWidthOption()Lcom/metamoji/lib/dialog/UtDialog$WidthOption;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/lib/dialog/UtDialog$WidthOption;->getParam()I

    move-result v2

    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getHeightOption()Lcom/metamoji/lib/dialog/UtDialog$HeightOption;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/lib/dialog/UtDialog$HeightOption;->getParam()I

    move-result v3

    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getGravityOption()Lcom/metamoji/lib/dialog/UtDialog$GravityOption;

    move-result-object v4

    invoke-virtual {v4}, Lcom/metamoji/lib/dialog/UtDialog$GravityOption;->getGravity()I

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    check-cast v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 947
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getHeightOption()Lcom/metamoji/lib/dialog/UtDialog$HeightOption;

    move-result-object v0

    sget-object v1, Lcom/metamoji/lib/dialog/UtDialog$HeightOption;->FULL:Lcom/metamoji/lib/dialog/UtDialog$HeightOption;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 948
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getBodyContainer()Landroid/view/ViewGroup;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v0, v2}, Lcom/metamoji/lib/utils/ViewExtKt;->setLayoutHeight(Landroid/view/View;I)V

    .line 950
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getWidthOption()Lcom/metamoji/lib/dialog/UtDialog$WidthOption;

    move-result-object v0

    sget-object v1, Lcom/metamoji/lib/dialog/UtDialog$WidthOption;->FULL:Lcom/metamoji/lib/dialog/UtDialog$WidthOption;

    if-ne v0, v1, :cond_1

    .line 951
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getBodyContainer()Landroid/view/ViewGroup;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v0, v2}, Lcom/metamoji/lib/utils/ViewExtKt;->setLayoutWidth(Landroid/view/View;I)V

    .line 953
    :cond_1
    invoke-direct {p0}, Lcom/metamoji/lib/dialog/UtDialog;->setupFixedSize()V

    .line 954
    invoke-direct {p0}, Lcom/metamoji/lib/dialog/UtDialog;->setupDynamicSize()V

    return-void
.end method

.method static final setupWindowInsetsListener$lambda$14(Lcom/metamoji/lib/dialog/UtDialog;Landroidx/core/graphics/Insets;)V
    .locals 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1291
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getRootView()Landroid/view/ViewGroup;

    move-result-object p0

    iget v0, p1, Landroidx/core/graphics/Insets;->left:I

    iget v1, p1, Landroidx/core/graphics/Insets;->top:I

    iget v2, p1, Landroidx/core/graphics/Insets;->right:I

    iget p1, p1, Landroidx/core/graphics/Insets;->bottom:I

    invoke-virtual {p0, v0, v1, v2, p1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    return-void
.end method

.method static final setupWindowInsetsListener$lambda$15(Lcom/metamoji/lib/dialog/UtDialog;Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 3

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "insets"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1296
    sget-object p1, Lcom/metamoji/lib/dialog/UtDialogConfig$SystemZone;->INSTANCE:Lcom/metamoji/lib/dialog/UtDialogConfig$SystemZone;

    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getSystemZoneFlags()I

    move-result v0

    invoke-virtual {p1, p2, v0}, Lcom/metamoji/lib/dialog/UtDialogConfig$SystemZone;->calcInsets(Landroidx/core/view/WindowInsetsCompat;I)Landroidx/core/graphics/Insets;

    move-result-object p1

    .line 1297
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getRootView()Landroid/view/ViewGroup;

    move-result-object p0

    iget v0, p1, Landroidx/core/graphics/Insets;->left:I

    iget v1, p1, Landroidx/core/graphics/Insets;->top:I

    iget v2, p1, Landroidx/core/graphics/Insets;->right:I

    iget p1, p1, Landroidx/core/graphics/Insets;->bottom:I

    invoke-virtual {p0, v0, v1, v2, p1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    return-object p2
.end method

.method static final themedContext_delegate$lambda$3(Lcom/metamoji/lib/dialog/UtDialog;)Landroid/view/ContextThemeWrapper;
    .locals 2

    .line 675
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-super {p0}, Lcom/metamoji/lib/dialog/UtDialogBase;->getContext()Landroid/content/Context;

    move-result-object p0

    sget-object v1, Lcom/metamoji/lib/dialog/UtDialogConfig;->INSTANCE:Lcom/metamoji/lib/dialog/UtDialogConfig;

    invoke-virtual {v1}, Lcom/metamoji/lib/dialog/UtDialogConfig;->getDialogTheme()I

    move-result v1

    invoke-direct {v0, p0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method private final updateButton(Landroid/widget/Button;IZ)V
    .locals 1

    .line 684
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 685
    invoke-virtual {v0, p2}, Landroidx/fragment/app/FragmentActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    if-eqz p3, :cond_0

    .line 687
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getContext()Landroid/content/Context;

    move-result-object p2

    sget p3, Lcom/metamoji/lib/dialog/R$drawable;->dlg_button_bg_blue:I

    invoke-static {p2, p3}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 688
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getContext()Landroid/content/Context;

    move-result-object p2

    sget p3, Lcom/metamoji/lib/dialog/R$color;->dlg_button_fg_blue:I

    invoke-virtual {p2, p3}, Landroid/content/Context;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    return-void

    .line 690
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getContext()Landroid/content/Context;

    move-result-object p2

    sget p3, Lcom/metamoji/lib/dialog/R$drawable;->dlg_button_bg_white:I

    invoke-static {p2, p3}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 691
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getContext()Landroid/content/Context;

    move-result-object p2

    sget p3, Lcom/metamoji/lib/dialog/R$color;->dlg_button_fg_white:I

    invoke-virtual {p2, p3}, Landroid/content/Context;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_1
    return-void
.end method

.method private final updateDynamicHeight(Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;)Z
    .locals 7

    .line 1011
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getHeightOption()Lcom/metamoji/lib/dialog/UtDialog$HeightOption;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/lib/dialog/UtDialog$HeightOption;->isDynamicSizing()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 1012
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getRootView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getRootView()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getRootView()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v0, v2

    if-gtz v0, :cond_0

    return v1

    .line 1014
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getRefContainerView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 1015
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getDialogView()Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getDialogView()Landroid/view/ViewGroup;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 1676
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    instance-of v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    goto :goto_0

    :cond_1
    move-object v4, v6

    :goto_0
    if-eqz v4, :cond_2

    iget v4, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_1

    :cond_2
    move v4, v1

    :goto_1
    add-int/2addr v3, v4

    .line 1015
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getDialogView()Landroid/view/ViewGroup;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 1677
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    instance-of v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v5, :cond_3

    move-object v6, v4

    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    :cond_3
    if-eqz v6, :cond_4

    iget v4, v6, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_2

    :cond_4
    move v4, v1

    :goto_2
    add-int/2addr v3, v4

    .line 1016
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getBodyView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    sub-int/2addr v3, v2

    sub-int/2addr v0, v3

    .line 1019
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getHeightOption()Lcom/metamoji/lib/dialog/UtDialog$HeightOption;

    move-result-object v3

    sget-object v5, Lcom/metamoji/lib/dialog/UtDialog$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v3}, Lcom/metamoji/lib/dialog/UtDialog$HeightOption;->ordinal()I

    move-result v3

    aget v3, v5, v3

    const/4 v5, 0x1

    if-eq v3, v5, :cond_7

    const/4 v6, 0x2

    if-eq v3, v6, :cond_6

    const/4 v6, 0x3

    if-eq v3, v6, :cond_5

    return v1

    .line 1022
    :cond_5
    invoke-virtual {p0, v4, v2, v0}, Lcom/metamoji/lib/dialog/UtDialog;->calcCustomContainerHeight(III)I

    move-result v0

    goto :goto_3

    .line 1021
    :cond_6
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->requireContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "requireContext(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getHeightHint()I

    move-result v3

    invoke-static {v2, v3}, Lcom/metamoji/lib/utils/ViewExtKt;->dp2px(Landroid/content/Context;I)I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_3

    .line 1020
    :cond_7
    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1027
    :goto_3
    iget v2, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->height:I

    if-eq v2, v0, :cond_8

    .line 1028
    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->height:I

    return v5

    :cond_8
    return v1
.end method

.method private final updateDynamicWidth(Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;)Z
    .locals 5

    .line 1040
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getWidthOption()Lcom/metamoji/lib/dialog/UtDialog$WidthOption;

    move-result-object v0

    sget-object v1, Lcom/metamoji/lib/dialog/UtDialog$WidthOption;->LIMIT:Lcom/metamoji/lib/dialog/UtDialog$WidthOption;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 1041
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getRootView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    if-nez v0, :cond_0

    return v2

    .line 1043
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getDialogView()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    .line 1044
    invoke-virtual {p1}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->getMarginStart()I

    move-result v3

    sub-int v3, v1, v3

    invoke-virtual {p1}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->getMarginEnd()I

    move-result v4

    sub-int/2addr v3, v4

    sub-int/2addr v1, v3

    sub-int/2addr v0, v1

    .line 1046
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "requireContext(...)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getWidthHint()I

    move-result v3

    invoke-static {v1, v3}, Lcom/metamoji/lib/utils/ViewExtKt;->dp2px(Landroid/content/Context;I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1047
    iget v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->width:I

    if-eq v1, v0, :cond_1

    .line 1048
    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->width:I

    const/4 p1, 0x1

    return p1

    :cond_1
    return v2
.end method

.method private final updateLeftButton()V
    .locals 3

    .line 700
    invoke-direct {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getLeftButtonText()I

    move-result v0

    if-eqz v0, :cond_0

    .line 702
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getLeftButton()Landroid/widget/Button;

    move-result-object v1

    invoke-direct {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getLeftButtonBlue()Z

    move-result v2

    invoke-direct {p0, v1, v0, v2}, Lcom/metamoji/lib/dialog/UtDialog;->updateButton(Landroid/widget/Button;IZ)V

    return-void

    .line 704
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getLeftButton()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getNoInvisibleHeaderButton()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x8

    goto :goto_0

    :cond_1
    const/4 v1, 0x4

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method

.method private final updateRightButton()V
    .locals 3

    .line 711
    invoke-direct {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getRightButtonText()I

    move-result v0

    if-eqz v0, :cond_0

    .line 713
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getRightButton()Landroid/widget/Button;

    move-result-object v1

    invoke-direct {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getRightButtonBlue()Z

    move-result v2

    invoke-direct {p0, v1, v0, v2}, Lcom/metamoji/lib/dialog/UtDialog;->updateButton(Landroid/widget/Button;IZ)V

    return-void

    .line 715
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getRightButton()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getNoInvisibleHeaderButton()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x8

    goto :goto_0

    :cond_1
    const/4 v1, 0x4

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method protected final applyGuardColor()V
    .locals 3

    .line 401
    invoke-direct {p0}, Lcom/metamoji/lib/dialog/UtDialog;->managedGuardColor()I

    move-result v0

    .line 402
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getRootView()Landroid/view/ViewGroup;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    check-cast v2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method protected calcCustomContainerHeight(III)I
    .locals 0

    new-instance p1, Ljava/lang/IllegalStateException;

    .line 288
    const-string p2, "calcCustomContainerHeight() must be overridden in subclass on setting \'heightOption==CUSTOM\'"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final comebackFromRefuge(Landroidx/fragment/app/FragmentTransaction;)V
    .locals 1

    const-string v0, "transaction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1317
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->isDialog()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1318
    :cond_0
    move-object v0, p0

    check-cast v0, Landroidx/fragment/app/Fragment;

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentTransaction;->attach(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    return-void
.end method

.method protected confirmToCompleteNegative()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected confirmToCompletePositive()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected abstract createBodyView(Landroid/os/Bundle;Lcom/metamoji/lib/dialog/UtDialog$IViewInflater;)Landroid/view/View;
.end method

.method public final enableFocusManagement(ZLcom/metamoji/lib/dialog/UtFocusManager$UseKey;)Lcom/metamoji/lib/dialog/UtFocusManager;
    .locals 1

    .line 455
    iget-object v0, p0, Lcom/metamoji/lib/dialog/UtDialog;->focusManager:Lcom/metamoji/lib/dialog/UtDialog$FocusManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/metamoji/lib/dialog/UtDialog$FocusManager;

    invoke-direct {v0, p1, p2}, Lcom/metamoji/lib/dialog/UtDialog$FocusManager;-><init>(ZLcom/metamoji/lib/dialog/UtFocusManager$UseKey;)V

    iput-object v0, p0, Lcom/metamoji/lib/dialog/UtDialog;->focusManager:Lcom/metamoji/lib/dialog/UtDialog$FocusManager;

    .line 456
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/lib/dialog/UtDialog$FocusManager;->getBody()Lcom/metamoji/lib/dialog/UtFocusManager;

    move-result-object p1

    return-object p1
.end method

.method public final getAdjustContentForKeyboard()Lcom/metamoji/lib/dialog/UtDialog$KeyboardAdjustMode;
    .locals 3

    .line 469
    iget-object v0, p0, Lcom/metamoji/lib/dialog/UtDialog;->adjustContentForKeyboard$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcom/metamoji/lib/dialog/UtDialog;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x12

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/lib/dialog/UtDialog$KeyboardAdjustMode;

    return-object v0
.end method

.method public final getAdjustContentsStrategy()Lcom/metamoji/lib/dialog/UtDialog$KeyboardAdjustStrategy;
    .locals 3

    .line 478
    iget-object v0, p0, Lcom/metamoji/lib/dialog/UtDialog;->adjustContentsStrategy$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcom/metamoji/lib/dialog/UtDialog;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x13

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/lib/dialog/UtDialog$KeyboardAdjustStrategy;

    return-object v0
.end method

.method public final getAnimationEffect()Z
    .locals 3

    .line 124
    iget-object v0, p0, Lcom/metamoji/lib/dialog/UtDialog;->animationEffect$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcom/metamoji/lib/dialog/UtDialog;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final getBackInvokerPriority()I
    .locals 1

    .line 1190
    iget v0, p0, Lcom/metamoji/lib/dialog/UtDialog;->backInvokerPriority:I

    return v0
.end method

.method public final getBodyContainer()Landroid/view/ViewGroup;
    .locals 1

    .line 926
    iget-object v0, p0, Lcom/metamoji/lib/dialog/UtDialog;->bodyContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "bodyContainer"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getBodyContainerMargin()I
    .locals 3

    .line 149
    iget-object v0, p0, Lcom/metamoji/lib/dialog/UtDialog;->bodyContainerMargin$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcom/metamoji/lib/dialog/UtDialog;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x8

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public final getBodyGuardColor()I
    .locals 3

    .line 368
    iget-object v0, p0, Lcom/metamoji/lib/dialog/UtDialog;->bodyGuardColor$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcom/metamoji/lib/dialog/UtDialog;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x11

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public final getBodyGuardView()Landroid/widget/FrameLayout;
    .locals 1

    .line 932
    iget-object v0, p0, Lcom/metamoji/lib/dialog/UtDialog;->bodyGuardView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "bodyGuardView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getBodyView()Landroid/view/View;
    .locals 1

    .line 928
    iget-object v0, p0, Lcom/metamoji/lib/dialog/UtDialog;->bodyView:Landroid/view/View;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "bodyView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getCenterProgressRing()Landroid/widget/ProgressBar;
    .locals 1

    .line 934
    iget-object v0, p0, Lcom/metamoji/lib/dialog/UtDialog;->centerProgressRing:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "centerProgressRing"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getClipHorizontalOnDrag()Z
    .locals 3

    .line 117
    iget-object v0, p0, Lcom/metamoji/lib/dialog/UtDialog;->clipHorizontalOnDrag$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcom/metamoji/lib/dialog/UtDialog;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final getClipVerticalOnDrag()Z
    .locals 3

    .line 109
    iget-object v0, p0, Lcom/metamoji/lib/dialog/UtDialog;->clipVerticalOnDrag$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcom/metamoji/lib/dialog/UtDialog;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method protected final getCompatBackKeyDispatcher()Lcom/metamoji/lib/utils/CompatBackKeyDispatcher;
    .locals 1

    .line 1189
    iget-object v0, p0, Lcom/metamoji/lib/dialog/UtDialog;->compatBackKeyDispatcher:Lcom/metamoji/lib/utils/CompatBackKeyDispatcher;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 677
    invoke-direct {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final getCustomPositionX()Ljava/lang/Float;
    .locals 3

    .line 323
    iget-object v0, p0, Lcom/metamoji/lib/dialog/UtDialog;->customPositionX$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcom/metamoji/lib/dialog/UtDialog;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0xe

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    return-object v0
.end method

.method public final getCustomPositionY()Ljava/lang/Float;
    .locals 3

    .line 329
    iget-object v0, p0, Lcom/metamoji/lib/dialog/UtDialog;->customPositionY$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcom/metamoji/lib/dialog/UtDialog;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0xf

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    return-object v0
.end method

.method public final getDialogView()Landroid/view/ViewGroup;
    .locals 1

    .line 924
    iget-object v0, p0, Lcom/metamoji/lib/dialog/UtDialog;->dialogView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "dialogView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getDraggable()Z
    .locals 3

    .line 101
    iget-object v0, p0, Lcom/metamoji/lib/dialog/UtDialog;->draggable$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcom/metamoji/lib/dialog/UtDialog;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final getGravityOption()Lcom/metamoji/lib/dialog/UtDialog$GravityOption;
    .locals 3

    .line 317
    iget-object v0, p0, Lcom/metamoji/lib/dialog/UtDialog;->gravityOption$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcom/metamoji/lib/dialog/UtDialog;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0xd

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/lib/dialog/UtDialog$GravityOption;

    return-object v0
.end method

.method public final getGuardColor()I
    .locals 3

    .line 353
    iget-object v0, p0, Lcom/metamoji/lib/dialog/UtDialog;->guardColor$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcom/metamoji/lib/dialog/UtDialog;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x10

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public final getHasLeftButton()Z
    .locals 1

    .line 617
    invoke-direct {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getLeftButtonText()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final getHasRightButton()Z
    .locals 1

    .line 625
    invoke-direct {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getRightButtonText()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final getHeightHint()I
    .locals 3

    .line 228
    iget-object v0, p0, Lcom/metamoji/lib/dialog/UtDialog;->heightHint$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcom/metamoji/lib/dialog/UtDialog;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0xc

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public final getHeightOption()Lcom/metamoji/lib/dialog/UtDialog$HeightOption;
    .locals 3

    .line 216
    iget-object v0, p0, Lcom/metamoji/lib/dialog/UtDialog;->heightOption$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcom/metamoji/lib/dialog/UtDialog;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0xa

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/lib/dialog/UtDialog$HeightOption;

    return-object v0
.end method

.method public final getImmService()Landroid/view/inputmethod/InputMethodManager;
    .locals 2

    .line 1377
    :try_start_0
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->requireContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.view.inputmethod.InputMethodManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getLeftButton()Landroid/widget/Button;
    .locals 1

    .line 915
    iget-object v0, p0, Lcom/metamoji/lib/dialog/UtDialog;->leftButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "leftButton"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected final getLeftButtonType()Lcom/metamoji/lib/dialog/UtDialog$BuiltInButtonType;
    .locals 2

    .line 607
    invoke-direct {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getLeftButtonText()I

    move-result v0

    invoke-direct {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getLeftButtonPositive()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/metamoji/lib/dialog/UtDialog;->idToButtonType(IZ)Lcom/metamoji/lib/dialog/UtDialog$BuiltInButtonType;

    move-result-object v0

    return-object v0
.end method

.method public final getNoHeader()Z
    .locals 3

    .line 131
    iget-object v0, p0, Lcom/metamoji/lib/dialog/UtDialog;->noHeader$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcom/metamoji/lib/dialog/UtDialog;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final getNoInvisibleHeaderButton()Z
    .locals 3

    .line 140
    iget-object v0, p0, Lcom/metamoji/lib/dialog/UtDialog;->noInvisibleHeaderButton$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcom/metamoji/lib/dialog/UtDialog;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x7

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final getOrientation()I
    .locals 1

    .line 727
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    return v0
.end method

.method public final getParentDialog()Lcom/metamoji/lib/dialog/UtDialog;
    .locals 1

    .line 551
    sget-object v0, Lcom/metamoji/lib/dialog/UtDialogHelper;->INSTANCE:Lcom/metamoji/lib/dialog/UtDialogHelper;

    invoke-virtual {v0, p0}, Lcom/metamoji/lib/dialog/UtDialogHelper;->parentDialog(Lcom/metamoji/lib/dialog/UtDialog;)Lcom/metamoji/lib/dialog/UtDialog;

    move-result-object v0

    return-object v0
.end method

.method public final getParentVisibilityOption()Lcom/metamoji/lib/dialog/UtDialog$ParentVisibilityOption;
    .locals 3

    .line 498
    iget-object v0, p0, Lcom/metamoji/lib/dialog/UtDialog;->parentVisibilityOption$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcom/metamoji/lib/dialog/UtDialog;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x14

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/lib/dialog/UtDialog$ParentVisibilityOption;

    return-object v0
.end method

.method protected final getPositiveCancellable()Z
    .locals 3

    .line 74
    iget-object v0, p0, Lcom/metamoji/lib/dialog/UtDialog;->positiveCancellable$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcom/metamoji/lib/dialog/UtDialog;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final getProgressRingOnTitleBar()Landroid/widget/ProgressBar;
    .locals 1

    .line 919
    iget-object v0, p0, Lcom/metamoji/lib/dialog/UtDialog;->progressRingOnTitleBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "progressRingOnTitleBar"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getRefContainerView()Landroid/view/View;
    .locals 1

    .line 930
    iget-object v0, p0, Lcom/metamoji/lib/dialog/UtDialog;->refContainerView:Landroid/view/View;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "refContainerView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getRightButton()Landroid/widget/Button;
    .locals 1

    .line 917
    iget-object v0, p0, Lcom/metamoji/lib/dialog/UtDialog;->rightButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "rightButton"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected final getRightButtonType()Lcom/metamoji/lib/dialog/UtDialog$BuiltInButtonType;
    .locals 2

    .line 609
    invoke-direct {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getRightButtonText()I

    move-result v0

    invoke-direct {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getRightButtonPositive()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/metamoji/lib/dialog/UtDialog;->idToButtonType(IZ)Lcom/metamoji/lib/dialog/UtDialog$BuiltInButtonType;

    move-result-object v0

    return-object v0
.end method

.method public final getRootDialog()Lcom/metamoji/lib/dialog/UtDialog;
    .locals 3

    .line 544
    sget-object v0, Lcom/metamoji/lib/dialog/UtDialogHelper;->INSTANCE:Lcom/metamoji/lib/dialog/UtDialogHelper;

    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-string v2, "requireActivity(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/lib/dialog/UtDialogHelper;->rootDialog(Landroidx/fragment/app/FragmentActivity;)Lcom/metamoji/lib/dialog/UtDialog;

    move-result-object v0

    return-object v0
.end method

.method public final getRootView()Landroid/view/ViewGroup;
    .locals 1

    .line 922
    iget-object v0, p0, Lcom/metamoji/lib/dialog/UtDialog;->rootView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public final getScrollable()Z
    .locals 3

    .line 67
    iget-object v0, p0, Lcom/metamoji/lib/dialog/UtDialog;->scrollable$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcom/metamoji/lib/dialog/UtDialog;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .line 562
    invoke-direct {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getPrivateTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getTitleView()Landroid/widget/TextView;
    .locals 1

    .line 913
    iget-object v0, p0, Lcom/metamoji/lib/dialog/UtDialog;->titleView:Landroid/widget/TextView;

    return-object v0
.end method

.method public final getVisible()Z
    .locals 1

    .line 504
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getRootView()Landroid/view/ViewGroup;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1675
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final getWidthHint()I
    .locals 3

    .line 222
    iget-object v0, p0, Lcom/metamoji/lib/dialog/UtDialog;->widthHint$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcom/metamoji/lib/dialog/UtDialog;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0xb

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public final getWidthOption()Lcom/metamoji/lib/dialog/UtDialog$WidthOption;
    .locals 3

    .line 210
    iget-object v0, p0, Lcom/metamoji/lib/dialog/UtDialog;->widthOption$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcom/metamoji/lib/dialog/UtDialog;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x9

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/lib/dialog/UtDialog$WidthOption;

    return-object v0
.end method

.method public handleKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1567
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 1568
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v2, 0x4

    const/4 v3, 0x1

    if-eq v0, v2, :cond_3

    const/16 v2, 0x6f

    if-eq v0, v2, :cond_3

    .line 1582
    iget-object v2, p0, Lcom/metamoji/lib/dialog/UtDialog;->focusManager:Lcom/metamoji/lib/dialog/UtDialog$FocusManager;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/metamoji/lib/dialog/UtDialog$FocusManager;->getRoot()Lcom/metamoji/lib/dialog/UtFocusManager;

    move-result-object v2

    if-eqz v2, :cond_1

    new-instance v4, Lcom/metamoji/lib/dialog/UtDialog$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lcom/metamoji/lib/dialog/UtDialog$$ExternalSyntheticLambda0;-><init>(Lcom/metamoji/lib/dialog/UtDialog;)V

    invoke-virtual {v2, p1, v4}, Lcom/metamoji/lib/dialog/UtFocusManager;->handleTabEvent(Landroid/view/KeyEvent;Lkotlin/jvm/functions/Function0;)Z

    move-result p1

    if-ne p1, v3, :cond_1

    return v3

    :cond_1
    const/16 p1, 0x5c

    if-eq v0, p1, :cond_2

    const/16 p1, 0x5d

    if-eq v0, p1, :cond_2

    const/16 p1, 0x7a

    if-eq v0, p1, :cond_2

    const/16 p1, 0x7b

    if-eq v0, p1, :cond_2

    packed-switch v0, :pswitch_data_0

    return v1

    :cond_2
    :pswitch_0
    return v3

    .line 1578
    :cond_3
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->cancel()V

    return v3

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final hideSoftwareKeyboard()V
    .locals 3

    .line 1386
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 1387
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getImmService()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getRootView()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_1
    return-void
.end method

.method protected internalCloseDialog()V
    .locals 2

    .line 1349
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getAnimationEffect()Z

    move-result v0

    new-instance v1, Lcom/metamoji/lib/dialog/UtDialog$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lcom/metamoji/lib/dialog/UtDialog$$ExternalSyntheticLambda8;-><init>(Lcom/metamoji/lib/dialog/UtDialog;)V

    invoke-direct {p0, v0, v1}, Lcom/metamoji/lib/dialog/UtDialog;->fadeOut(ZLkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public isCancelable()Z
    .locals 1

    .line 91
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getCancellable()Z

    move-result v0

    return v0
.end method

.method public final isLandscape()Z
    .locals 2

    .line 733
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getOrientation()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final isPhone()Z
    .locals 2

    .line 745
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/metamoji/lib/dialog/R$bool;->under600dp:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public final isPortrait()Z
    .locals 2

    .line 739
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getOrientation()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final isTablet()Z
    .locals 1

    .line 751
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->isPhone()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final isViewInitialized()Z
    .locals 1

    .line 1104
    iget-object v0, p0, Lcom/metamoji/lib/dialog/UtDialog;->rootView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected onBackgroundTapped(Landroid/view/View;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1550
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getRootView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getCancellable()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1551
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getPositiveCancellable()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1552
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->onPositive()V

    return-void

    .line 1554
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->onNegative()V

    :cond_1
    return-void
.end method

.method protected onCancellableChanged(Z)V
    .locals 0

    .line 77
    iget-object p1, p0, Lcom/metamoji/lib/dialog/UtDialog;->rootView:Landroid/view/ViewGroup;

    if-eqz p1, :cond_0

    .line 78
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->applyGuardColor()V

    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .line 1162
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->isDialog()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1165
    invoke-super {p0, p1}, Lcom/metamoji/lib/dialog/UtDialogBase;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    const-string v0, "onCreateDialog(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 1168
    :cond_0
    new-instance p1, Lcom/metamoji/lib/dialog/UtDialog$XDialog;

    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->requireContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "requireContext(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v1, Lcom/metamoji/lib/dialog/R$style;->dlg_style:I

    invoke-direct {p1, p0, v0, v1}, Lcom/metamoji/lib/dialog/UtDialog$XDialog;-><init>(Lcom/metamoji/lib/dialog/UtDialog;Landroid/content/Context;I)V

    .line 1169
    invoke-virtual {p1}, Lcom/metamoji/lib/dialog/UtDialog$XDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1170
    sget-object v1, Lcom/metamoji/lib/dialog/UtDialog$GuardColor;->TRANSPARENT:Lcom/metamoji/lib/dialog/UtDialog$GuardColor;

    invoke-virtual {v1}, Lcom/metamoji/lib/dialog/UtDialog$GuardColor;->getColor()I

    move-result v1

    .line 1678
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    check-cast v2, Landroid/graphics/drawable/Drawable;

    .line 1170
    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1172
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getSystemZoneOption()Lcom/metamoji/lib/dialog/UtDialogConfig$SystemZoneOption;

    move-result-object v1

    sget-object v2, Lcom/metamoji/lib/dialog/UtDialogConfig$SystemZoneOption;->HIDE_ACTION_BAR:Lcom/metamoji/lib/dialog/UtDialogConfig$SystemZoneOption;

    if-ne v1, v2, :cond_1

    .line 1173
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/core/view/WindowCompat;->getInsetsController(Landroid/view/Window;Landroid/view/View;)Landroidx/core/view/WindowInsetsControllerCompat;

    move-result-object v1

    const-string v2, "getInsetsController(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1174
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->systemBars()I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/core/view/WindowInsetsControllerCompat;->hide(I)V

    const/16 v1, 0x200

    .line 1176
    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 1182
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 1168
    :cond_1
    check-cast p1, Landroid/app/Dialog;

    return-object p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    const-string v0, "findViewById(...)"

    const-string v1, "orgInflater"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1198
    :try_start_0
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 1199
    sget-object v1, Lcom/metamoji/lib/dialog/UtDialogConfig;->INSTANCE:Lcom/metamoji/lib/dialog/UtDialogConfig;

    invoke-virtual {v1}, Lcom/metamoji/lib/dialog/UtDialogConfig;->getSolidBackgroundOnPhone()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->isPhone()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1200
    invoke-virtual {p0, v2}, Lcom/metamoji/lib/dialog/UtDialog;->setAnimationEffect(Z)V

    .line 1202
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->preCreateBodyView()V

    .line 1204
    sget v1, Lcom/metamoji/lib/dialog/R$layout;->dialog_frame:I

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const-string v1, "null cannot be cast to non-null type android.widget.FrameLayout"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/FrameLayout;

    check-cast p2, Landroid/view/ViewGroup;

    invoke-virtual {p0, p2}, Lcom/metamoji/lib/dialog/UtDialog;->setRootView(Landroid/view/ViewGroup;)V

    .line 1206
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->setupWindowInsetsListener()V

    .line 1208
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getNoHeader()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 1209
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getRootView()Landroid/view/ViewGroup;

    move-result-object p2

    sget v1, Lcom/metamoji/lib/dialog/R$id;->header:I

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const/16 v1, 0x8

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1210
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getRootView()Landroid/view/ViewGroup;

    move-result-object p2

    sget v3, Lcom/metamoji/lib/dialog/R$id;->separator:I

    invoke-virtual {p2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1212
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getRootView()Landroid/view/ViewGroup;

    move-result-object p2

    sget v1, Lcom/metamoji/lib/dialog/R$id;->left_button:I

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/metamoji/lib/dialog/UtDialog;->leftButton:Landroid/widget/Button;

    .line 1213
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getRootView()Landroid/view/ViewGroup;

    move-result-object p2

    sget v1, Lcom/metamoji/lib/dialog/R$id;->right_button:I

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/metamoji/lib/dialog/UtDialog;->rightButton:Landroid/widget/Button;

    .line 1214
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getRootView()Landroid/view/ViewGroup;

    move-result-object p2

    sget v1, Lcom/metamoji/lib/dialog/R$id;->dialog_title:I

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/metamoji/lib/dialog/UtDialog;->titleView:Landroid/widget/TextView;

    .line 1215
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getRootView()Landroid/view/ViewGroup;

    move-result-object p2

    sget v1, Lcom/metamoji/lib/dialog/R$id;->progress_on_title_bar:I

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/ProgressBar;

    iput-object p2, p0, Lcom/metamoji/lib/dialog/UtDialog;->progressRingOnTitleBar:Landroid/widget/ProgressBar;

    .line 1216
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getRootView()Landroid/view/ViewGroup;

    move-result-object p2

    sget v1, Lcom/metamoji/lib/dialog/R$id;->dialog_view:I

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/view/ViewGroup;

    invoke-virtual {p0, p2}, Lcom/metamoji/lib/dialog/UtDialog;->setDialogView(Landroid/view/ViewGroup;)V

    .line 1217
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getRootView()Landroid/view/ViewGroup;

    move-result-object p2

    sget v1, Lcom/metamoji/lib/dialog/R$id;->ref_container_view:I

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/metamoji/lib/dialog/UtDialog;->refContainerView:Landroid/view/View;

    .line 1218
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getRootView()Landroid/view/ViewGroup;

    move-result-object p2

    sget v1, Lcom/metamoji/lib/dialog/R$id;->body_guard_view:I

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/FrameLayout;

    iput-object p2, p0, Lcom/metamoji/lib/dialog/UtDialog;->bodyGuardView:Landroid/widget/FrameLayout;

    .line 1219
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getBodyGuardView()Landroid/widget/FrameLayout;

    move-result-object p2

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getBodyGuardColor()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/metamoji/lib/dialog/UtDialog;->resolveColor(I)I

    move-result v3

    invoke-direct {v1, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    check-cast v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, v1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1220
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getRootView()Landroid/view/ViewGroup;

    move-result-object p2

    sget v1, Lcom/metamoji/lib/dialog/R$id;->center_progress_ring:I

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/ProgressBar;

    iput-object p2, p0, Lcom/metamoji/lib/dialog/UtDialog;->centerProgressRing:Landroid/widget/ProgressBar;

    .line 1221
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getDialogView()Landroid/view/ViewGroup;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 1222
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getTitle()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getTitleView()Landroid/widget/TextView;

    move-result-object v1

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1223
    :cond_2
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getHeightOption()Lcom/metamoji/lib/dialog/UtDialog$HeightOption;

    move-result-object p2

    sget-object v1, Lcom/metamoji/lib/dialog/UtDialog$HeightOption;->AUTO_SCROLL:Lcom/metamoji/lib/dialog/UtDialog$HeightOption;

    if-ne p2, v1, :cond_3

    .line 1224
    invoke-virtual {p0, v0}, Lcom/metamoji/lib/dialog/UtDialog;->setScrollable(Z)V

    goto :goto_0

    .line 1225
    :cond_3
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getHeightOption()Lcom/metamoji/lib/dialog/UtDialog$HeightOption;

    move-result-object p2

    sget-object v1, Lcom/metamoji/lib/dialog/UtDialog$HeightOption;->CUSTOM:Lcom/metamoji/lib/dialog/UtDialog$HeightOption;

    if-ne p2, v1, :cond_4

    .line 1226
    invoke-virtual {p0, v2}, Lcom/metamoji/lib/dialog/UtDialog;->setScrollable(Z)V

    .line 1228
    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getScrollable()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 1229
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getRootView()Landroid/view/ViewGroup;

    move-result-object p2

    sget v1, Lcom/metamoji/lib/dialog/R$id;->body_scroller:I

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    goto :goto_1

    .line 1231
    :cond_5
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getRootView()Landroid/view/ViewGroup;

    move-result-object p2

    sget v1, Lcom/metamoji/lib/dialog/R$id;->body_container:I

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    .line 1228
    :goto_1
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/metamoji/lib/dialog/UtDialog;->bodyContainer:Landroid/view/ViewGroup;

    .line 1233
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getBodyContainerMargin()I

    move-result p2

    if-ltz p2, :cond_6

    .line 1235
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getBodyContainer()Landroid/view/ViewGroup;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-static {v1, p2, p2, p2, p2}, Lcom/metamoji/lib/utils/ViewExtKt;->setMargin(Landroid/view/View;IIII)V

    .line 1237
    :cond_6
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getBodyContainer()Landroid/view/ViewGroup;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1238
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getLeftButton()Landroid/widget/Button;

    move-result-object p2

    new-instance v1, Lcom/metamoji/lib/dialog/UtDialog$$ExternalSyntheticLambda17;

    invoke-direct {v1, p0}, Lcom/metamoji/lib/dialog/UtDialog$$ExternalSyntheticLambda17;-><init>(Lcom/metamoji/lib/dialog/UtDialog;)V

    invoke-virtual {p2, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1239
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getRightButton()Landroid/widget/Button;

    move-result-object p2

    new-instance v1, Lcom/metamoji/lib/dialog/UtDialog$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/metamoji/lib/dialog/UtDialog$$ExternalSyntheticLambda1;-><init>(Lcom/metamoji/lib/dialog/UtDialog;)V

    invoke-virtual {p2, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1241
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getRootView()Landroid/view/ViewGroup;

    move-result-object p2

    new-instance v1, Lcom/metamoji/lib/dialog/UtDialog$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/metamoji/lib/dialog/UtDialog$$ExternalSyntheticLambda2;-><init>(Lcom/metamoji/lib/dialog/UtDialog;)V

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1242
    invoke-direct {p0}, Lcom/metamoji/lib/dialog/UtDialog;->updateLeftButton()V

    .line 1243
    invoke-direct {p0}, Lcom/metamoji/lib/dialog/UtDialog;->updateRightButton()V

    .line 1244
    new-instance p2, Lcom/metamoji/lib/dialog/UtDialog$ViewInflater;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getBodyContainer()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-direct {p2, p1, v1}, Lcom/metamoji/lib/dialog/UtDialog$ViewInflater;-><init>(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    check-cast p2, Lcom/metamoji/lib/dialog/UtDialog$IViewInflater;

    invoke-virtual {p0, p3, p2}, Lcom/metamoji/lib/dialog/UtDialog;->createBodyView(Landroid/os/Bundle;Lcom/metamoji/lib/dialog/UtDialog$IViewInflater;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/lib/dialog/UtDialog;->bodyView:Landroid/view/View;

    .line 1245
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getBodyContainer()Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getBodyView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1246
    iget-object p1, p0, Lcom/metamoji/lib/dialog/UtDialog;->focusManager:Lcom/metamoji/lib/dialog/UtDialog$FocusManager;

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getRootView()Landroid/view/ViewGroup;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getBodyView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Lcom/metamoji/lib/dialog/UtDialog$FocusManager;->attach(Landroid/view/View;Landroid/view/View;)V

    .line 1247
    :cond_7
    invoke-direct {p0}, Lcom/metamoji/lib/dialog/UtDialog;->setupLayout()V

    .line 1248
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getDraggable()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 1249
    invoke-direct {p0}, Lcom/metamoji/lib/dialog/UtDialog;->enableDrag()V

    .line 1251
    :cond_8
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->applyGuardColor()V

    if-nez p3, :cond_9

    .line 1259
    iget-object p1, p0, Lcom/metamoji/lib/dialog/UtDialog;->focusManager:Lcom/metamoji/lib/dialog/UtDialog$FocusManager;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Lcom/metamoji/lib/dialog/UtDialog$FocusManager;->reserveInitialFocus()V

    goto :goto_2

    .line 1262
    :cond_9
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getParentVisibilityOption()Lcom/metamoji/lib/dialog/UtDialog$ParentVisibilityOption;

    move-result-object p1

    sget-object p2, Lcom/metamoji/lib/dialog/UtDialog$ParentVisibilityOption;->NONE:Lcom/metamoji/lib/dialog/UtDialog$ParentVisibilityOption;

    if-eq p1, p2, :cond_a

    .line 1263
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getParentDialog()Lcom/metamoji/lib/dialog/UtDialog;

    move-result-object p1

    if-eqz p1, :cond_a

    invoke-virtual {p1, v2}, Lcom/metamoji/lib/dialog/UtDialog;->setVisible(Z)V

    .line 1266
    :cond_a
    :goto_2
    invoke-direct {p0}, Lcom/metamoji/lib/dialog/UtDialog;->prepareSoftwareKeyboardObserver()V

    .line 1269
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getParentDialog()Lcom/metamoji/lib/dialog/UtDialog;

    move-result-object p1

    if-eqz p1, :cond_b

    iget p1, p1, Lcom/metamoji/lib/dialog/UtDialog;->backInvokerPriority:I

    goto :goto_3

    :cond_b
    sget-object p1, Lcom/metamoji/lib/dialog/UtDialogConfig;->INSTANCE:Lcom/metamoji/lib/dialog/UtDialogConfig;

    invoke-virtual {p1}, Lcom/metamoji/lib/dialog/UtDialogConfig;->getBaseBackInvokedDispatcherPriority()I

    move-result p1

    :goto_3
    add-int/2addr p1, v0

    iput p1, p0, Lcom/metamoji/lib/dialog/UtDialog;->backInvokerPriority:I

    .line 1270
    iget-object p2, p0, Lcom/metamoji/lib/dialog/UtDialog;->compatBackKeyDispatcher:Lcom/metamoji/lib/utils/CompatBackKeyDispatcher;

    invoke-virtual {p2, p1}, Lcom/metamoji/lib/utils/CompatBackKeyDispatcher;->setInvokedDispatcherPriority(I)Lcom/metamoji/lib/utils/CompatBackKeyDispatcher;

    move-result-object p1

    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const-string p3, "requireActivity(...)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroidx/activity/ComponentActivity;

    move-object p3, p0

    check-cast p3, Landroidx/lifecycle/LifecycleOwner;

    new-instance v0, Lcom/metamoji/lib/dialog/UtDialog$onCreateView$5;

    invoke-direct {v0, p0}, Lcom/metamoji/lib/dialog/UtDialog$onCreateView$5;-><init>(Ljava/lang/Object;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-virtual {p1, p2, p3, v0}, Lcom/metamoji/lib/utils/CompatBackKeyDispatcher;->register(Landroidx/activity/ComponentActivity;Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function0;)V

    .line 1271
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getRootView()Landroid/view/ViewGroup;

    move-result-object p1

    check-cast p1, Landroid/view/View;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 1276
    sget-object p2, Lcom/metamoji/lib/dialog/UtDialogBase;->Companion:Lcom/metamoji/lib/dialog/UtDialogBase$Companion;

    invoke-virtual {p2}, Lcom/metamoji/lib/dialog/UtDialogBase$Companion;->getLogger()Lcom/metamoji/lib/utils/UtLog;

    move-result-object p2

    const/4 p3, 0x2

    const/4 v0, 0x0

    invoke-static {p2, p1, v0, p3, v0}, Lcom/metamoji/lib/utils/UtLog;->stackTrace$default(Lcom/metamoji/lib/utils/UtLog;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)V

    .line 1277
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->dismiss()V

    .line 1278
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->notifyResult()V

    return-object v0
.end method

.method protected onDialogClosing()V
    .locals 4

    .line 1523
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->isViewInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1529
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->hideSoftwareKeyboard()V

    .line 1538
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getParentDialog()Lcom/metamoji/lib/dialog/UtDialog;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 1539
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getParentVisibilityOption()Lcom/metamoji/lib/dialog/UtDialog$ParentVisibilityOption;

    move-result-object v1

    sget-object v2, Lcom/metamoji/lib/dialog/UtDialog$ParentVisibilityOption;->HIDE_AND_SHOW:Lcom/metamoji/lib/dialog/UtDialog$ParentVisibilityOption;

    if-eq v1, v2, :cond_4

    .line 1540
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getParentVisibilityOption()Lcom/metamoji/lib/dialog/UtDialog$ParentVisibilityOption;

    move-result-object v1

    sget-object v2, Lcom/metamoji/lib/dialog/UtDialog$ParentVisibilityOption;->HIDE_AND_SHOW_ON_NEGATIVE:Lcom/metamoji/lib/dialog/UtDialog$ParentVisibilityOption;

    if-ne v1, v2, :cond_2

    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getStatus()Lcom/metamoji/lib/dialog/IUtDialog$Status;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/lib/dialog/IUtDialog$Status;->getNegative()Z

    move-result v1

    if-nez v1, :cond_4

    .line 1541
    :cond_2
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getParentVisibilityOption()Lcom/metamoji/lib/dialog/UtDialog$ParentVisibilityOption;

    move-result-object v1

    sget-object v2, Lcom/metamoji/lib/dialog/UtDialog$ParentVisibilityOption;->HIDE_AND_SHOW_ON_POSITIVE:Lcom/metamoji/lib/dialog/UtDialog$ParentVisibilityOption;

    if-ne v1, v2, :cond_3

    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getStatus()Lcom/metamoji/lib/dialog/IUtDialog$Status;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/lib/dialog/IUtDialog$Status;->getPositive()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    :goto_0
    return-void

    .line 1542
    :cond_4
    :goto_1
    invoke-virtual {v0}, Lcom/metamoji/lib/dialog/UtDialog;->getAnimationEffect()Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2, v3}, Lcom/metamoji/lib/dialog/UtDialog;->fadeIn$default(Lcom/metamoji/lib/dialog/UtDialog;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void
.end method

.method protected onDialogOpening()V
    .locals 7

    .line 1358
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getAnimationEffect()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/metamoji/lib/dialog/UtDialog;->mRestoringFromRefuge:Z

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {p0, v0, v3, v4, v3}, Lcom/metamoji/lib/dialog/UtDialog;->fadeIn$default(Lcom/metamoji/lib/dialog/UtDialog;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 1359
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getParentDialog()Lcom/metamoji/lib/dialog/UtDialog;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1360
    invoke-virtual {v0}, Lcom/metamoji/lib/dialog/UtDialog;->getStatus()Lcom/metamoji/lib/dialog/IUtDialog$Status;

    move-result-object v5

    invoke-virtual {v5}, Lcom/metamoji/lib/dialog/IUtDialog$Status;->getFinished()Z

    move-result v5

    if-nez v5, :cond_2

    .line 1362
    invoke-virtual {v0}, Lcom/metamoji/lib/dialog/UtDialog;->hideSoftwareKeyboard()V

    .line 1363
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getParentVisibilityOption()Lcom/metamoji/lib/dialog/UtDialog$ParentVisibilityOption;

    move-result-object v5

    sget-object v6, Lcom/metamoji/lib/dialog/UtDialog$ParentVisibilityOption;->NONE:Lcom/metamoji/lib/dialog/UtDialog$ParentVisibilityOption;

    if-eq v5, v6, :cond_2

    .line 1364
    invoke-virtual {v0}, Lcom/metamoji/lib/dialog/UtDialog;->getAnimationEffect()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-boolean v5, p0, Lcom/metamoji/lib/dialog/UtDialog;->mRestoringFromRefuge:Z

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-static {v0, v1, v3, v4, v3}, Lcom/metamoji/lib/dialog/UtDialog;->fadeOut$default(Lcom/metamoji/lib/dialog/UtDialog;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 1368
    :cond_2
    iput-boolean v2, p0, Lcom/metamoji/lib/dialog/UtDialog;->mRestoringFromRefuge:Z

    return-void
.end method

.method protected onLeftButtonTapped(Landroid/view/View;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1602
    invoke-direct {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getLeftButtonPositive()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1603
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->onPositive()V

    return-void

    .line 1605
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->onNegative()V

    return-void
.end method

.method protected onNegative()V
    .locals 1

    .line 1624
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->confirmToCompleteNegative()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1625
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->cancel()V

    :cond_0
    return-void
.end method

.method protected onPositive()V
    .locals 1

    .line 1633
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->confirmToCompletePositive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1634
    sget-object v0, Lcom/metamoji/lib/dialog/IUtDialog$Status;->POSITIVE:Lcom/metamoji/lib/dialog/IUtDialog$Status;

    invoke-virtual {p0, v0}, Lcom/metamoji/lib/dialog/UtDialog;->complete(Lcom/metamoji/lib/dialog/IUtDialog$Status;)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1334
    invoke-super {p0}, Lcom/metamoji/lib/dialog/UtDialogBase;->onResume()V

    .line 1335
    iget-object v0, p0, Lcom/metamoji/lib/dialog/UtDialog;->focusManager:Lcom/metamoji/lib/dialog/UtDialog$FocusManager;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/metamoji/lib/dialog/UtDialog$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/metamoji/lib/dialog/UtDialog$$ExternalSyntheticLambda6;-><init>(Lcom/metamoji/lib/dialog/UtDialog;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/lib/dialog/UtDialog$FocusManager;->applyInitialFocus(Lkotlin/jvm/functions/Function0;)V

    :cond_0
    return-void
.end method

.method protected onRightButtonTapped(Landroid/view/View;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1613
    invoke-direct {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getRightButtonPositive()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1614
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->onPositive()V

    return-void

    .line 1616
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->onNegative()V

    return-void
.end method

.method public onSoftwareKeyboardChanged(II)V
    .locals 2

    if-lez p1, :cond_1

    .line 1435
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getRootView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->findFocus()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1436
    :cond_0
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 1437
    invoke-virtual {v0, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 1439
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v1, v1, 0x14

    sub-int/2addr p2, p1

    sub-int/2addr v1, p2

    .line 1441
    invoke-direct {p0, v1, v0}, Lcom/metamoji/lib/dialog/UtDialog;->adjustContents(ILandroid/view/View;)V

    return-void

    :cond_1
    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 1443
    invoke-direct {p0, p1, p2}, Lcom/metamoji/lib/dialog/UtDialog;->adjustContents(ILandroid/view/View;)V

    return-void
.end method

.method public preCreateBodyView()V
    .locals 0

    return-void
.end method

.method public final refuge(Landroidx/fragment/app/FragmentTransaction;)Lcom/metamoji/lib/dialog/UtDialogHelper$IDialogRefuge;
    .locals 1

    const-string v0, "transaction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1322
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->isDialog()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 v0, 0x1

    .line 1323
    iput-boolean v0, p0, Lcom/metamoji/lib/dialog/UtDialog;->mRestoringFromRefuge:Z

    .line 1324
    move-object v0, p0

    check-cast v0, Landroidx/fragment/app/Fragment;

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentTransaction;->detach(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 1325
    new-instance p1, Lcom/metamoji/lib/dialog/UtDialog$Refuge;

    invoke-direct {p1, p0}, Lcom/metamoji/lib/dialog/UtDialog$Refuge;-><init>(Lcom/metamoji/lib/dialog/UtDialog;)V

    check-cast p1, Lcom/metamoji/lib/dialog/UtDialogHelper$IDialogRefuge;

    return-object p1
.end method

.method public replaceTitle(Ljava/lang/String;)V
    .locals 1

    .line 569
    invoke-direct {p0, p1}, Lcom/metamoji/lib/dialog/UtDialog;->setPrivateTitle(Ljava/lang/String;)V

    .line 570
    iget-object v0, p0, Lcom/metamoji/lib/dialog/UtDialog;->titleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 571
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getTitleView()Landroid/widget/TextView;

    move-result-object v0

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public final resolveColor(I)I
    .locals 1

    .line 374
    sget-object v0, Lcom/metamoji/lib/dialog/UtDialog$GuardColor;->THEME_DIM:Lcom/metamoji/lib/dialog/UtDialog$GuardColor;

    invoke-virtual {v0}, Lcom/metamoji/lib/dialog/UtDialog$GuardColor;->getColor()I

    move-result v0

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/metamoji/lib/dialog/R$color;->guard_dim:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result p1

    return p1

    .line 375
    :cond_0
    sget-object v0, Lcom/metamoji/lib/dialog/UtDialog$GuardColor;->THEME_SEE_THROUGH:Lcom/metamoji/lib/dialog/UtDialog$GuardColor;

    invoke-virtual {v0}, Lcom/metamoji/lib/dialog/UtDialog$GuardColor;->getColor()I

    move-result v0

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/metamoji/lib/dialog/R$color;->guard_see_through:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result p1

    :cond_1
    return p1
.end method

.method public final setAdjustContentForKeyboard(Lcom/metamoji/lib/dialog/UtDialog$KeyboardAdjustMode;)V
    .locals 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 469
    iget-object v0, p0, Lcom/metamoji/lib/dialog/UtDialog;->adjustContentForKeyboard$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcom/metamoji/lib/dialog/UtDialog;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x12

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1, p1}, Lkotlin/properties/ReadWriteProperty;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final setAdjustContentsStrategy(Lcom/metamoji/lib/dialog/UtDialog$KeyboardAdjustStrategy;)V
    .locals 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 478
    iget-object v0, p0, Lcom/metamoji/lib/dialog/UtDialog;->adjustContentsStrategy$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcom/metamoji/lib/dialog/UtDialog;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x13

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1, p1}, Lkotlin/properties/ReadWriteProperty;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final setAnimationEffect(Z)V
    .locals 3

    .line 124
    iget-object v0, p0, Lcom/metamoji/lib/dialog/UtDialog;->animationEffect$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcom/metamoji/lib/dialog/UtDialog;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, p0, v1, p1}, Lkotlin/properties/ReadWriteProperty;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method protected final setBackInvokerPriority(I)V
    .locals 0

    .line 1191
    iput p1, p0, Lcom/metamoji/lib/dialog/UtDialog;->backInvokerPriority:I

    return-void
.end method

.method public final setBodyContainerMargin(I)V
    .locals 3

    .line 149
    iget-object v0, p0, Lcom/metamoji/lib/dialog/UtDialog;->bodyContainerMargin$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcom/metamoji/lib/dialog/UtDialog;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x8

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p0, v1, p1}, Lkotlin/properties/ReadWriteProperty;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final setBodyGuardColor(I)V
    .locals 3

    .line 368
    iget-object v0, p0, Lcom/metamoji/lib/dialog/UtDialog;->bodyGuardColor$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcom/metamoji/lib/dialog/UtDialog;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x11

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p0, v1, p1}, Lkotlin/properties/ReadWriteProperty;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public setCancelable(Z)V
    .locals 0

    .line 87
    invoke-virtual {p0, p1}, Lcom/metamoji/lib/dialog/UtDialog;->setCancellable(Z)V

    return-void
.end method

.method public final setClipHorizontalOnDrag(Z)V
    .locals 3

    .line 117
    iget-object v0, p0, Lcom/metamoji/lib/dialog/UtDialog;->clipHorizontalOnDrag$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcom/metamoji/lib/dialog/UtDialog;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, p0, v1, p1}, Lkotlin/properties/ReadWriteProperty;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final setClipVerticalOnDrag(Z)V
    .locals 3

    .line 109
    iget-object v0, p0, Lcom/metamoji/lib/dialog/UtDialog;->clipVerticalOnDrag$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcom/metamoji/lib/dialog/UtDialog;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, p0, v1, p1}, Lkotlin/properties/ReadWriteProperty;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final setCustomPositionX(Ljava/lang/Float;)V
    .locals 3

    .line 323
    iget-object v0, p0, Lcom/metamoji/lib/dialog/UtDialog;->customPositionX$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcom/metamoji/lib/dialog/UtDialog;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0xe

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1, p1}, Lkotlin/properties/ReadWriteProperty;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final setCustomPositionY(Ljava/lang/Float;)V
    .locals 3

    .line 329
    iget-object v0, p0, Lcom/metamoji/lib/dialog/UtDialog;->customPositionY$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcom/metamoji/lib/dialog/UtDialog;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0xf

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1, p1}, Lkotlin/properties/ReadWriteProperty;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method protected final setDialogView(Landroid/view/ViewGroup;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 925
    iput-object p1, p0, Lcom/metamoji/lib/dialog/UtDialog;->dialogView:Landroid/view/ViewGroup;

    return-void
.end method

.method public final setDraggable(Z)V
    .locals 3

    .line 101
    iget-object v0, p0, Lcom/metamoji/lib/dialog/UtDialog;->draggable$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcom/metamoji/lib/dialog/UtDialog;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, p0, v1, p1}, Lkotlin/properties/ReadWriteProperty;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final setFixedHeight(I)V
    .locals 1

    .line 236
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->isViewInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 239
    sget-object v0, Lcom/metamoji/lib/dialog/UtDialog$HeightOption;->FIXED:Lcom/metamoji/lib/dialog/UtDialog$HeightOption;

    invoke-virtual {p0, v0}, Lcom/metamoji/lib/dialog/UtDialog;->setHeightOption(Lcom/metamoji/lib/dialog/UtDialog$HeightOption;)V

    .line 240
    invoke-virtual {p0, p1}, Lcom/metamoji/lib/dialog/UtDialog;->setHeightHint(I)V

    return-void

    .line 237
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "dialog rendering information must be set before preCreateBodyView"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setFixedWidth(I)V
    .locals 1

    .line 261
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->isViewInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 264
    sget-object v0, Lcom/metamoji/lib/dialog/UtDialog$WidthOption;->FIXED:Lcom/metamoji/lib/dialog/UtDialog$WidthOption;

    invoke-virtual {p0, v0}, Lcom/metamoji/lib/dialog/UtDialog;->setWidthOption(Lcom/metamoji/lib/dialog/UtDialog$WidthOption;)V

    .line 265
    invoke-virtual {p0, p1}, Lcom/metamoji/lib/dialog/UtDialog;->setWidthHint(I)V

    return-void

    .line 262
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "dialog rendering information must be set before preCreateBodyView"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setGravityOption(Lcom/metamoji/lib/dialog/UtDialog$GravityOption;)V
    .locals 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 317
    iget-object v0, p0, Lcom/metamoji/lib/dialog/UtDialog;->gravityOption$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcom/metamoji/lib/dialog/UtDialog;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0xd

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1, p1}, Lkotlin/properties/ReadWriteProperty;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final setGuardColor(I)V
    .locals 3

    .line 353
    iget-object v0, p0, Lcom/metamoji/lib/dialog/UtDialog;->guardColor$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcom/metamoji/lib/dialog/UtDialog;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x10

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p0, v1, p1}, Lkotlin/properties/ReadWriteProperty;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final setHeightHint(I)V
    .locals 3

    .line 228
    iget-object v0, p0, Lcom/metamoji/lib/dialog/UtDialog;->heightHint$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcom/metamoji/lib/dialog/UtDialog;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0xc

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p0, v1, p1}, Lkotlin/properties/ReadWriteProperty;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final setHeightOption(Lcom/metamoji/lib/dialog/UtDialog$HeightOption;)V
    .locals 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 216
    iget-object v0, p0, Lcom/metamoji/lib/dialog/UtDialog;->heightOption$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcom/metamoji/lib/dialog/UtDialog;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0xa

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1, p1}, Lkotlin/properties/ReadWriteProperty;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final setLeftButton(IZZ)V
    .locals 0

    .line 636
    invoke-direct {p0, p1}, Lcom/metamoji/lib/dialog/UtDialog;->setLeftButtonText(I)V

    .line 637
    invoke-direct {p0, p2}, Lcom/metamoji/lib/dialog/UtDialog;->setLeftButtonPositive(Z)V

    .line 638
    invoke-direct {p0, p3}, Lcom/metamoji/lib/dialog/UtDialog;->setLeftButtonBlue(Z)V

    .line 639
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->isViewInitialized()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 640
    invoke-direct {p0}, Lcom/metamoji/lib/dialog/UtDialog;->updateLeftButton()V

    :cond_0
    return-void
.end method

.method public final setLeftButton(Lcom/metamoji/lib/dialog/UtDialog$BuiltInButtonType;)V
    .locals 2

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 648
    invoke-virtual {p1}, Lcom/metamoji/lib/dialog/UtDialog$BuiltInButtonType;->getString()Lcom/metamoji/lib/dialog/UtStandardString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/lib/dialog/UtStandardString;->getId()I

    move-result v0

    invoke-virtual {p1}, Lcom/metamoji/lib/dialog/UtDialog$BuiltInButtonType;->getPositive()Z

    move-result v1

    invoke-virtual {p1}, Lcom/metamoji/lib/dialog/UtDialog$BuiltInButtonType;->getBlueColor()Z

    move-result p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/metamoji/lib/dialog/UtDialog;->setLeftButton(IZZ)V

    return-void
.end method

.method public final setLimitHeight(I)V
    .locals 1

    .line 248
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->isViewInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 251
    sget-object v0, Lcom/metamoji/lib/dialog/UtDialog$HeightOption;->LIMIT:Lcom/metamoji/lib/dialog/UtDialog$HeightOption;

    invoke-virtual {p0, v0}, Lcom/metamoji/lib/dialog/UtDialog;->setHeightOption(Lcom/metamoji/lib/dialog/UtDialog$HeightOption;)V

    .line 252
    invoke-virtual {p0, p1}, Lcom/metamoji/lib/dialog/UtDialog;->setHeightHint(I)V

    return-void

    .line 249
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "dialog rendering information must be set before preCreateBodyView"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setLimitWidth(I)V
    .locals 1

    .line 273
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->isViewInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 276
    sget-object v0, Lcom/metamoji/lib/dialog/UtDialog$WidthOption;->LIMIT:Lcom/metamoji/lib/dialog/UtDialog$WidthOption;

    invoke-virtual {p0, v0}, Lcom/metamoji/lib/dialog/UtDialog;->setWidthOption(Lcom/metamoji/lib/dialog/UtDialog$WidthOption;)V

    .line 277
    invoke-virtual {p0, p1}, Lcom/metamoji/lib/dialog/UtDialog;->setWidthHint(I)V

    return-void

    .line 274
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "dialog rendering information must be set before preCreateBodyView"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setNoHeader(Z)V
    .locals 3

    .line 131
    iget-object v0, p0, Lcom/metamoji/lib/dialog/UtDialog;->noHeader$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcom/metamoji/lib/dialog/UtDialog;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, p0, v1, p1}, Lkotlin/properties/ReadWriteProperty;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final setNoInvisibleHeaderButton(Z)V
    .locals 3

    .line 140
    iget-object v0, p0, Lcom/metamoji/lib/dialog/UtDialog;->noInvisibleHeaderButton$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcom/metamoji/lib/dialog/UtDialog;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x7

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, p0, v1, p1}, Lkotlin/properties/ReadWriteProperty;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final setParentVisibilityOption(Lcom/metamoji/lib/dialog/UtDialog$ParentVisibilityOption;)V
    .locals 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 498
    iget-object v0, p0, Lcom/metamoji/lib/dialog/UtDialog;->parentVisibilityOption$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcom/metamoji/lib/dialog/UtDialog;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x14

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1, p1}, Lkotlin/properties/ReadWriteProperty;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method protected final setPositiveCancellable(Z)V
    .locals 3

    .line 74
    iget-object v0, p0, Lcom/metamoji/lib/dialog/UtDialog;->positiveCancellable$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcom/metamoji/lib/dialog/UtDialog;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, p0, v1, p1}, Lkotlin/properties/ReadWriteProperty;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final setRightButton(IZZ)V
    .locals 0

    .line 660
    invoke-direct {p0, p1}, Lcom/metamoji/lib/dialog/UtDialog;->setRightButtonText(I)V

    .line 661
    invoke-direct {p0, p2}, Lcom/metamoji/lib/dialog/UtDialog;->setRightButtonPositive(Z)V

    .line 662
    invoke-direct {p0, p3}, Lcom/metamoji/lib/dialog/UtDialog;->setRightButtonBlue(Z)V

    .line 663
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->isViewInitialized()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 664
    invoke-direct {p0}, Lcom/metamoji/lib/dialog/UtDialog;->updateRightButton()V

    :cond_0
    return-void
.end method

.method public final setRightButton(Lcom/metamoji/lib/dialog/UtDialog$BuiltInButtonType;)V
    .locals 7

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 672
    invoke-virtual {p1}, Lcom/metamoji/lib/dialog/UtDialog$BuiltInButtonType;->getString()Lcom/metamoji/lib/dialog/UtStandardString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/lib/dialog/UtStandardString;->getId()I

    move-result v2

    invoke-virtual {p1}, Lcom/metamoji/lib/dialog/UtDialog$BuiltInButtonType;->getPositive()Z

    move-result v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lcom/metamoji/lib/dialog/UtDialog;->setRightButton$default(Lcom/metamoji/lib/dialog/UtDialog;IZZILjava/lang/Object;)V

    return-void
.end method

.method protected final setRootView(Landroid/view/ViewGroup;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 923
    iput-object p1, p0, Lcom/metamoji/lib/dialog/UtDialog;->rootView:Landroid/view/ViewGroup;

    return-void
.end method

.method public final setScrollable(Z)V
    .locals 3

    .line 67
    iget-object v0, p0, Lcom/metamoji/lib/dialog/UtDialog;->scrollable$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcom/metamoji/lib/dialog/UtDialog;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, p0, v1, p1}, Lkotlin/properties/ReadWriteProperty;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final setTitle(Ljava/lang/String;)V
    .locals 0

    .line 563
    invoke-virtual {p0, p1}, Lcom/metamoji/lib/dialog/UtDialog;->replaceTitle(Ljava/lang/String;)V

    return-void
.end method

.method public final setVisible(Z)V
    .locals 2

    .line 506
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getRootView()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 507
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getRootView()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz p1, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setAlpha(F)V

    return-void
.end method

.method public final setWidthHint(I)V
    .locals 3

    .line 222
    iget-object v0, p0, Lcom/metamoji/lib/dialog/UtDialog;->widthHint$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcom/metamoji/lib/dialog/UtDialog;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0xb

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p0, v1, p1}, Lkotlin/properties/ReadWriteProperty;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final setWidthOption(Lcom/metamoji/lib/dialog/UtDialog$WidthOption;)V
    .locals 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 210
    iget-object v0, p0, Lcom/metamoji/lib/dialog/UtDialog;->widthOption$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcom/metamoji/lib/dialog/UtDialog;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x9

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1, p1}, Lkotlin/properties/ReadWriteProperty;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method protected final setupWindowInsetsListener()V
    .locals 3

    .line 1287
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v1, v0, Lcom/metamoji/lib/dialog/task/UtMortalActivity;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/metamoji/lib/dialog/task/UtMortalActivity;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    .line 1288
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getSystemZoneOption()Lcom/metamoji/lib/dialog/UtDialogConfig$SystemZoneOption;

    move-result-object v1

    sget-object v2, Lcom/metamoji/lib/dialog/UtDialogConfig$SystemZoneOption;->FIT_TO_ACTIVITY:Lcom/metamoji/lib/dialog/UtDialogConfig$SystemZoneOption;

    if-ne v1, v2, :cond_2

    .line 1290
    move-object v1, p0

    check-cast v1, Landroidx/lifecycle/LifecycleOwner;

    new-instance v2, Lcom/metamoji/lib/dialog/UtDialog$$ExternalSyntheticLambda15;

    invoke-direct {v2, p0}, Lcom/metamoji/lib/dialog/UtDialog$$ExternalSyntheticLambda15;-><init>(Lcom/metamoji/lib/dialog/UtDialog;)V

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/lib/dialog/task/UtMortalActivity;->addRootViewInsetsListener(Landroidx/lifecycle/LifecycleOwner;Lcom/metamoji/lib/utils/Listeners$IListener;)Lcom/metamoji/lib/utils/IDisposable;

    return-void

    .line 1293
    :cond_2
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getSystemZoneOption()Lcom/metamoji/lib/dialog/UtDialogConfig$SystemZoneOption;

    move-result-object v0

    sget-object v1, Lcom/metamoji/lib/dialog/UtDialogConfig$SystemZoneOption;->CUSTOM_INSETS:Lcom/metamoji/lib/dialog/UtDialogConfig$SystemZoneOption;

    if-ne v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getSystemZoneFlags()I

    move-result v0

    if-eqz v0, :cond_3

    .line 1295
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/UtDialog;->getRootView()Landroid/view/ViewGroup;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    new-instance v1, Lcom/metamoji/lib/dialog/UtDialog$$ExternalSyntheticLambda16;

    invoke-direct {v1, p0}, Lcom/metamoji/lib/dialog/UtDialog$$ExternalSyntheticLambda16;-><init>(Lcom/metamoji/lib/dialog/UtDialog;)V

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    :cond_3
    :goto_1
    return-void
.end method

.method protected final updateCustomHeight()V
    .locals 0

    .line 296
    invoke-direct {p0}, Lcom/metamoji/lib/dialog/UtDialog;->onRootViewSizeChanged()V

    return-void
.end method
